#!/usr/bin/env python3
"""
Device Tree to Ada Package Generator

Parses Zephyr's compiled DTS file (zephyr.dts) and generates an Ada package
providing type-safe access to hardware device properties (base addresses,
IRQ numbers, clock frequencies) without C macros or preprocessor.

Usage:
    python3 dt_to_ada.py --input zephyr.dts --output zephyr-device_tree.ads

The generated package Zephyr.Device_Tree contains nested packages, one per
labelled device node that is enabled (status = "okay" or absent). Each nested
package exposes the node's key properties as Ada constants.

Example output:
    package Zephyr.Device_Tree is
       package UART0 is
          Base_Address    : constant := 16#4006A000#;
          Size            : constant := 16#1000#;
          Interrupt       : constant := 12;
          IRQ_Priority    : constant := 0;
       end UART0;
    end Zephyr.Device_Tree;
"""

import argparse
import re
import sys
from dataclasses import dataclass, field
from pathlib import Path
from typing import Optional


# ---------------------------------------------------------------------------
# Data model
# ---------------------------------------------------------------------------

@dataclass
class DTNode:
    """A parsed device tree node"""
    path: str
    label: Optional[str]             # node label (e.g. "uart0")
    compatible: list[str]            # compatible strings
    reg: list[tuple[int, int]]       # (base_addr, size) pairs
    interrupts: list[tuple[int, int]]  # (irq, priority) pairs
    clock_freq: Optional[int]
    status: Optional[str]
    children: list["DTNode"] = field(default_factory=list)


# ---------------------------------------------------------------------------
# DTS parser
# ---------------------------------------------------------------------------

_HEX_RE   = re.compile(r'0x([0-9a-fA-F]+)')
_DEC_RE   = re.compile(r'\b(\d+)\b')


def _parse_angle_list(s: str) -> list[int]:
    """Parse '< 0x1 0x2 >' into [1, 2]"""
    values = []
    for tok in re.findall(r'0x[0-9a-fA-F]+|\d+', s):
        if tok.startswith('0x') or tok.startswith('0X'):
            values.append(int(tok, 16))
        else:
            values.append(int(tok))
    return values


class DTSParser:
    """
    Minimal recursive-descent parser for the compiled zephyr.dts format.

    The compiled DTS (zephyr.dts) strips preprocessor directives and
    phandle references, making it simpler to parse than raw DTS.
    """

    def __init__(self, text: str):
        # Strip C-style comments (/* ... */) and single-line (// ...)
        text = re.sub(r'/\*.*?\*/', '', text, flags=re.DOTALL)
        text = re.sub(r'//[^\n]*', '', text)
        self.text = text
        self.pos = 0

    def _skip_ws(self):
        while self.pos < len(self.text) and self.text[self.pos] in ' \t\n\r':
            self.pos += 1

    def _peek(self) -> str:
        self._skip_ws()
        return self.text[self.pos] if self.pos < len(self.text) else ''

    def _consume(self, s: str):
        self._skip_ws()
        if not self.text[self.pos:].startswith(s):
            raise ValueError(
                f"Expected {s!r} at pos {self.pos}: "
                f"...{self.text[self.pos:self.pos+40]!r}..."
            )
        self.pos += len(s)

    def _read_until(self, chars: str) -> str:
        start = self.pos
        while self.pos < len(self.text) and self.text[self.pos] not in chars:
            self.pos += 1
        return self.text[start:self.pos].strip()

    def _read_string(self) -> str:
        """Read a quoted string"""
        self._skip_ws()
        self._consume('"')
        start = self.pos
        while self.pos < len(self.text):
            c = self.text[self.pos]
            if c == '\\':
                self.pos += 2
            elif c == '"':
                result = self.text[start:self.pos]
                self.pos += 1
                return result
            else:
                self.pos += 1
        raise ValueError("Unterminated string")

    def _read_identifier(self) -> str:
        self._skip_ws()
        start = self.pos
        while self.pos < len(self.text) and (
            self.text[self.pos].isalnum()
            or self.text[self.pos] in '-_,@.#'
        ):
            self.pos += 1
        return self.text[start:self.pos]

    def _read_property_value(self) -> str:
        """Read everything up to the semicolon"""
        start = self.pos
        depth = 0
        in_str = False
        while self.pos < len(self.text):
            c = self.text[self.pos]
            if c == '"' and not in_str:
                in_str = True
            elif c == '"' and in_str:
                in_str = False
            elif not in_str:
                if c == '<':
                    depth += 1
                elif c == '>':
                    depth -= 1
                elif c == ';' and depth == 0:
                    val = self.text[start:self.pos].strip()
                    self.pos += 1  # consume ';'
                    return val
            self.pos += 1
        return self.text[start:self.pos].strip()

    def parse_node(self, parent_path: str = "") -> Optional[DTNode]:
        """Parse a DTS node starting at '{'"""
        self._skip_ws()
        if self.pos >= len(self.text):
            return None

        # Read optional label: "label: name {"
        label = None
        name = ""

        saved = self.pos
        id1 = self._read_identifier()
        self._skip_ws()

        if self.pos < len(self.text) and self.text[self.pos] == ':':
            # "label: name {"
            label = id1
            self.pos += 1
            self._skip_ws()
            name = self._read_identifier()
        else:
            name = id1

        self._skip_ws()
        if self.pos >= len(self.text) or self.text[self.pos] != '{':
            self.pos = saved
            return None

        self._consume('{')

        path = parent_path + "/" + name if parent_path else name

        node = DTNode(
            path=path,
            label=label,
            compatible=[],
            reg=[],
            interrupts=[],
            clock_freq=None,
            status=None,
        )

        # Parse node body
        while True:
            self._skip_ws()
            if self.pos >= len(self.text):
                break
            c = self.text[self.pos]

            if c == '}':
                self.pos += 1
                # Consume trailing semicolon after '}'
                self._skip_ws()
                if self.pos < len(self.text) and self.text[self.pos] == ';':
                    self.pos += 1
                break

            # Try to parse a child node or property
            saved_inner = self.pos
            try:
                child = self.parse_node(path)
                if child:
                    node.children.append(child)
                    continue
            except ValueError:
                self.pos = saved_inner

            # Parse property: "name = value;" or "name;"
            self.pos = saved_inner
            prop_name = self._read_identifier()
            if not prop_name:
                self.pos += 1
                continue

            self._skip_ws()
            if self.pos < len(self.text) and self.text[self.pos] == '=':
                self.pos += 1
                self._skip_ws()
                val = self._read_property_value()
                self._apply_property(node, prop_name, val)
            else:
                # Boolean property (no value) - consume semicolon
                if self.pos < len(self.text) and self.text[self.pos] == ';':
                    self.pos += 1

        return node

    def _apply_property(self, node: DTNode, name: str, val: str):
        """Interpret a property value and store on the node"""
        if name == 'compatible':
            # "foo,bar", "baz,qux"
            node.compatible = re.findall(r'"([^"]+)"', val)

        elif name == 'reg':
            nums = _parse_angle_list(val)
            # Pairs of (base, size)
            node.reg = [(nums[i], nums[i+1]) for i in range(0, len(nums)-1, 2)]

        elif name == 'interrupts':
            nums = _parse_angle_list(val)
            # Pairs of (irq, priority)
            node.interrupts = [(nums[i], nums[i+1]) for i in range(0, len(nums)-1, 2)]

        elif name == 'clock-frequency':
            nums = _parse_angle_list(val)
            if nums:
                node.clock_freq = nums[0]

        elif name == 'status':
            m = re.search(r'"([^"]+)"', val)
            node.status = m.group(1) if m else val

    def parse_file(self) -> list[DTNode]:
        """Parse the top-level file, skipping /dts-v1/; preamble"""
        nodes = []

        # Skip /dts-v1/; directive
        self._skip_ws()
        if self.text[self.pos:self.pos+8] == '/dts-v1/':
            self._read_until(';')
            self._consume(';')

        # Parse all top-level nodes (usually just '/')
        while self.pos < len(self.text):
            self._skip_ws()
            if self.pos >= len(self.text):
                break
            node = self.parse_node()
            if node:
                nodes.append(node)
            else:
                # Skip unexpected content
                self.pos += 1

        return nodes


# ---------------------------------------------------------------------------
# Node collection and Ada generation
# ---------------------------------------------------------------------------

def collect_labelled_nodes(nodes: list[DTNode]) -> list[DTNode]:
    """Recursively find all nodes with labels that are enabled"""
    result = []
    for node in nodes:
        if node.label and node.status != 'disabled':
            result.append(node)
        result.extend(collect_labelled_nodes(node.children))
    return result


def _ada_package_name(label: str) -> str:
    """Convert node label to Ada package name (uart0 -> UART0, i2c1 -> I2C1)"""
    return label.upper()


def _compatible_comment(node: DTNode) -> str:
    if node.compatible:
        return f"  --  {', '.join(node.compatible)}"
    return ""


def generate_node_package(node: DTNode) -> list[str]:
    """Generate nested Ada package for a single device node"""
    pkg_name = _ada_package_name(node.label)
    lines = [
        f"   --  {node.path}{_compatible_comment(node)}",
        f"   package {pkg_name} is",
    ]

    has_content = False

    # Base address and size from first reg pair
    if node.reg:
        base, size = node.reg[0]
        lines.append(f"      Base_Address : constant := 16#{base:X}#;")
        if size > 0:
            lines.append(f"      Size         : constant := 16#{size:X}#;")
        has_content = True

    # IRQ from first interrupt pair
    if node.interrupts:
        irq, prio = node.interrupts[0]
        lines.append(f"      Interrupt    : constant := {irq};")
        lines.append(f"      IRQ_Priority : constant := {prio};")
        has_content = True

    # Clock frequency
    if node.clock_freq is not None:
        lines.append(f"      Clock_Freq   : constant := {node.clock_freq};")
        has_content = True

    if not has_content:
        lines.append("      --  No addressable properties")

    lines.append(f"   end {pkg_name};")
    lines.append("")
    return lines


def generate_ada_package(nodes: list[DTNode], output_path: Path):
    """Write the Zephyr.Device_Tree Ada package"""

    content = [
        "--  SPDX-License-Identifier: Apache-2.0",
        "--",
        "--  Generated from Zephyr Device Tree - DO NOT EDIT MANUALLY",
        "--  This file is automatically generated by dt_to_ada.py",
        "",
        "package Zephyr.Device_Tree is",
        "",
        "   --  Hardware device properties from the board device tree.",
        "   --  Use these constants to access device base addresses, IRQ numbers",
        "   --  and clock frequencies from Ada code without C preprocessor macros.",
        "",
    ]

    for node in nodes:
        content.extend(generate_node_package(node))

    content.extend([
        "end Zephyr.Device_Tree;",
        "",
    ])

    output_path.parent.mkdir(parents=True, exist_ok=True)
    with open(output_path, 'w') as f:
        f.write('\n'.join(content))

    print(f"Generated Ada device tree package: {output_path}")
    print(f"  Labelled enabled nodes: {len(nodes)}")


# ---------------------------------------------------------------------------
# Entry point
# ---------------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(
        description='Convert Zephyr DTS to Ada Zephyr.Device_Tree package'
    )
    parser.add_argument('--input',  required=True, type=Path,
                        help='Path to compiled zephyr.dts')
    parser.add_argument('--output', required=True, type=Path,
                        help='Output Ada package path (.ads file)')
    args = parser.parse_args()

    if not args.input.exists():
        print(f"Error: {args.input} not found", file=sys.stderr)
        return 1

    text = args.input.read_text()

    try:
        p = DTSParser(text)
        top_nodes = p.parse_file()
    except ValueError as e:
        print(f"Parse error: {e}", file=sys.stderr)
        return 1

    labelled = collect_labelled_nodes(top_nodes)
    if not labelled:
        print("Warning: no labelled device nodes found", file=sys.stderr)

    generate_ada_package(labelled, args.output)
    return 0


if __name__ == '__main__':
    sys.exit(main())
