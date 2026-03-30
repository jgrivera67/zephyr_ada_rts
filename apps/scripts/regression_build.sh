#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0
#
# Zephyr Ada — Regression Build Script
#
# Builds every sample app for every supported platform and reports results.
# Supported platforms are those declared in apps/compiler_flags.gpr:
#   frdm_kl25z       ARM Cortex-M0+   (gnat_arm_elf via Alire)
#   esp32c3_devkitm  RISC-V 32-bit    (gnat_riscv64_elf via Alire)
#   rpi_4b           ARM Cortex-A72   (custom ADA_TOOLCHAIN_PATH required)
#   rpi_5            ARM Cortex-A76   (custom ADA_TOOLCHAIN_PATH required)
#   fvp_baser_aemv8r/fvp_aemv8r_aarch32  ARM Cortex-R52   (gnat_arm_elf via Alire)
#
# Usage:
#   ./apps/scripts/regression_build.sh [OPTIONS]
#
# Options:
#   --samples NAMES    Comma-separated list of samples to build (default: all)
#                      Names: hello_world, ada_tasking, ada_protected_objects,
#                             frdm_kl25z_autonomous_car  (frdm_kl25z only)
#   --boards NAMES     Comma-separated list of boards to build (default: all
#                      boards for which the required toolchain is available)
#   --build-dir DIR    Root directory for build artifacts
#                      (default: apps/build/regression)
#   --no-pristine      Reuse previous build directory (incremental)
#   --jobs N           Parallel cmake jobs (default: auto)
#   --help             Show this help message
#
# Environment:
#   ZEPHYR_BASE        Must be set (or run from inside a west workspace)
#   ADA_TOOLCHAIN_PATH Optional path to custom GNAT cross-compiler.
#                      Required for rpi_4b / rpi_5 (aarch64 — no Alire crate).
#                      When set it is also used for all other boards.
#
# Examples:
#   # Full regression (all samples × all reachable boards)
#   source zephyr/zephyr-env.sh && ./apps/scripts/regression_build.sh
#
#   # Specific sample, two boards
#   ./apps/scripts/regression_build.sh --samples ada_tasking \
#       --boards frdm_kl25z,esp32c3_devkitm
#
#   # Include aarch64 boards with custom toolchain
#   ADA_TOOLCHAIN_PATH=/opt/gnat-aarch64-elf \
#       ./apps/scripts/regression_build.sh --boards rpi_4b,rpi_5

set -euo pipefail

# ---------------------------------------------------------------------------
# Colour helpers (disabled when stdout is not a tty)
# ---------------------------------------------------------------------------
if [ -t 1 ]; then
    RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'
    CYAN='\033[0;36m'; BOLD='\033[1m'; RESET='\033[0m'
else
    RED=''; GREEN=''; YELLOW=''; CYAN=''; BOLD=''; RESET=''
fi

log_info()  { echo -e "${CYAN}[INFO]${RESET}  $*"; }
log_ok()    { echo -e "${GREEN}[PASS]${RESET}  $*"; }
log_fail()  { echo -e "${RED}[FAIL]${RESET}  $*"; }
log_skip()  { echo -e "${YELLOW}[SKIP]${RESET}  $*"; }
log_hdr()   { echo -e "\n${BOLD}$*${RESET}"; }

# ---------------------------------------------------------------------------
# Locate project root
# ---------------------------------------------------------------------------
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "${SCRIPT_DIR}/../.." && pwd)"
SAMPLES_DIR="${PROJECT_ROOT}/apps/samples"

# ---------------------------------------------------------------------------
# Platform definitions (source of truth: apps/compiler_flags.gpr)
# ---------------------------------------------------------------------------
# Boards that use Alire-managed toolchains (no ADA_TOOLCHAIN_PATH needed)
ALIRE_BOARDS=(
    frdm_kl25z                          # ARM Cortex-M0+  — gnat_arm_elf
    esp32c3_devkitm                     # RISC-V 32-bit   — gnat_riscv64_elf
    fvp_baser_aemv8r/fvp_aemv8r_aarch32 # ARM Cortex-R52  — gnat_arm_elf
)

# Boards that require a custom aarch64 toolchain (no Alire crate available)
CUSTOM_TC_BOARDS=(
    rpi_4b   # ARM Cortex-A72 aarch64
    rpi_5    # ARM Cortex-A76 aarch64
)

# All known boards (union of both sets)
ALL_BOARDS=("${ALIRE_BOARDS[@]}" "${CUSTOM_TC_BOARDS[@]}")

# All sample directory names under apps/samples/
ALL_SAMPLES=(
    hello_world
    ada_tasking
    ada_protected_objects
    frdm_kl25z_autonomous_car
)

# Per-sample supported-board lists.
# frdm_kl25z_autonomous_car is a special case: it uses NXP KL25Z-specific
# hardware (GPIO, ADC, PWM, steering servo) and can only be built for frdm_kl25z.
# Builds for any other board are silently skipped.
declare -A SAMPLE_BOARDS
SAMPLE_BOARDS[hello_world]="frdm_kl25z esp32c3_devkitm fvp_baser_aemv8r/fvp_aemv8r_aarch32 rpi_4b rpi_5"
SAMPLE_BOARDS[ada_tasking]="frdm_kl25z esp32c3_devkitm fvp_baser_aemv8r/fvp_aemv8r_aarch32 rpi_4b rpi_5"
SAMPLE_BOARDS[ada_protected_objects]="frdm_kl25z esp32c3_devkitm fvp_baser_aemv8r/fvp_aemv8r_aarch32 rpi_4b rpi_5"
SAMPLE_BOARDS[frdm_kl25z_autonomous_car]="frdm_kl25z"

# Human-readable label per sample
declare -A SAMPLE_DESC
SAMPLE_DESC[hello_world]="Hello World (UART)"
SAMPLE_DESC[ada_tasking]="Ada Tasking Demo"
SAMPLE_DESC[ada_protected_objects]="Ada Protected Objects Demo"
SAMPLE_DESC[frdm_kl25z_autonomous_car]="FRDM-KL25Z Autonomous Car"

# ---------------------------------------------------------------------------
# Defaults
# ---------------------------------------------------------------------------
OPT_SAMPLES=""
OPT_BOARDS=""
OPT_BUILD_DIR="${PROJECT_ROOT}/apps/build/regression"
OPT_PRISTINE="-p always"
OPT_JOBS=""

# ---------------------------------------------------------------------------
# Argument parsing
# ---------------------------------------------------------------------------
usage() {
    grep '^# ' "$0" | grep -A 999 'Usage:' | grep -B 999 '^#$' | sed 's/^# //' | head -40
    exit 0
}

while [[ $# -gt 0 ]]; do
    case "$1" in
        --samples)      OPT_SAMPLES="$2";   shift 2 ;;
        --boards)       OPT_BOARDS="$2";    shift 2 ;;
        --build-dir)    OPT_BUILD_DIR="$2"; shift 2 ;;
        --no-pristine)  OPT_PRISTINE="";    shift ;;
        --jobs)         OPT_JOBS="-- -j$2"; shift 2 ;;
        --help|-h)      usage ;;
        *) echo "Unknown option: $1"; exit 1 ;;
    esac
done

# ---------------------------------------------------------------------------
# Resolve active sample list
# ---------------------------------------------------------------------------
if [[ -n "${OPT_SAMPLES}" ]]; then
    IFS=',' read -ra ACTIVE_SAMPLES <<< "${OPT_SAMPLES}"
else
    ACTIVE_SAMPLES=("${ALL_SAMPLES[@]}")
fi

# ---------------------------------------------------------------------------
# Resolve active board list
# ---------------------------------------------------------------------------
if [[ -n "${OPT_BOARDS}" ]]; then
    IFS=',' read -ra ACTIVE_BOARDS <<< "${OPT_BOARDS}"
else
    # Default: include Alire boards always; include custom-toolchain boards
    # only when ADA_TOOLCHAIN_PATH is set.
    ACTIVE_BOARDS=("${ALIRE_BOARDS[@]}")
    if [[ -n "${ADA_TOOLCHAIN_PATH:-}" ]]; then
        ACTIVE_BOARDS+=("${CUSTOM_TC_BOARDS[@]}")
        log_info "ADA_TOOLCHAIN_PATH=${ADA_TOOLCHAIN_PATH} — including aarch64 boards"
    else
        log_info "ADA_TOOLCHAIN_PATH not set — skipping rpi_4b / rpi_5 (aarch64)"
    fi
fi

# ---------------------------------------------------------------------------
# Sanity checks
# ---------------------------------------------------------------------------
if ! command -v west &>/dev/null; then
    echo "ERROR: 'west' not found. Install with: pip install west"
    exit 1
fi

if ! command -v alr &>/dev/null; then
    echo "ERROR: 'alr' (Alire) not found on PATH."
    exit 1
fi

if [[ -z "${ZEPHYR_BASE:-}" ]]; then
    # Try to locate via west
    if west topdir &>/dev/null 2>&1; then
        export ZEPHYR_BASE="$(west topdir)/zephyr"
        log_info "ZEPHYR_BASE auto-set to ${ZEPHYR_BASE}"
    else
        echo "ERROR: ZEPHYR_BASE is not set and no west workspace found."
        echo "       Run: source zephyr/zephyr-env.sh"
        exit 1
    fi
fi

# ---------------------------------------------------------------------------
# Helper: is a board in a space-separated list?
# ---------------------------------------------------------------------------
board_in_list() {
    local board="$1" list="$2" p
    for p in $list; do [[ "$p" == "$board" ]] && return 0; done
    return 1
}

# ---------------------------------------------------------------------------
# Prepare output directories
# ---------------------------------------------------------------------------
mkdir -p "${OPT_BUILD_DIR}"
LOG_DIR="${OPT_BUILD_DIR}/logs"
mkdir -p "${LOG_DIR}"

TIMESTAMP="$(date +%Y%m%d_%H%M%S)"
SUMMARY_FILE="${OPT_BUILD_DIR}/regression_${TIMESTAMP}.txt"

# ---------------------------------------------------------------------------
# Result tracking
# ---------------------------------------------------------------------------
declare -a R_SAMPLE R_BOARD R_STATUS R_ELAPSED R_LOGFILE
PASS_COUNT=0; FAIL_COUNT=0; SKIP_COUNT=0

log_hdr "Zephyr Ada Regression Build"
log_info "Project root : ${PROJECT_ROOT}"
log_info "ZEPHYR_BASE  : ${ZEPHYR_BASE}"
log_info "Build dir    : ${OPT_BUILD_DIR}"
log_info "Samples      : ${ACTIVE_SAMPLES[*]}"
log_info "Boards       : ${ACTIVE_BOARDS[*]}"
log_info "Timestamp    : ${TIMESTAMP}"

# ---------------------------------------------------------------------------
# Build loop
# ---------------------------------------------------------------------------
for sample in "${ACTIVE_SAMPLES[@]}"; do
    sample_dir="${SAMPLES_DIR}/${sample}"

    if [[ ! -d "${sample_dir}" ]]; then
        log_skip "Sample '${sample}' not found at ${sample_dir}"
        continue
    fi

    for board in "${ACTIVE_BOARDS[@]}"; do
        allowed="${SAMPLE_BOARDS[${sample}]:-}"

        # Skip boards not in this sample's support matrix
        if ! board_in_list "${board}" "${allowed}"; then
            log_skip "${sample} / ${board} — not supported by this sample"
            R_SAMPLE+=("${sample}"); R_BOARD+=("${board}")
            R_STATUS+=("SKIP"); R_ELAPSED+=("-"); R_LOGFILE+=("-")
            (( SKIP_COUNT++ )) || true
            continue
        fi

        board_slug="${board//\//_}"  # replace '/' with '_' for use in paths
        build_dir="${OPT_BUILD_DIR}/${sample}/${board_slug}"
        log_file="${LOG_DIR}/${sample}_${board_slug}_${TIMESTAMP}.log"

        log_info "Building ${BOLD}${sample}${RESET} for ${BOLD}${board}${RESET} ..."

        t0=$(date +%s)
        if west build \
               ${OPT_PRISTINE} \
               -b "${board}" \
               -d "${build_dir}" \
               "${sample_dir}" \
               ${OPT_JOBS} \
               >"${log_file}" 2>&1
        then
            elapsed=$(( $(date +%s) - t0 ))
            log_ok "${sample} / ${board}  (${elapsed}s)"
            R_STATUS+=("PASS")
            (( PASS_COUNT++ )) || true
        else
            elapsed=$(( $(date +%s) - t0 ))
            log_fail "${sample} / ${board}  (${elapsed}s)  — ${log_file}"
            echo "    ---- last 20 lines ----"
            tail -n 20 "${log_file}" | sed 's/^/    /'
            echo "    -----------------------"
            R_STATUS+=("FAIL")
            (( FAIL_COUNT++ )) || true
        fi

        R_SAMPLE+=("${sample}"); R_BOARD+=("${board}")
        R_ELAPSED+=("${elapsed}s"); R_LOGFILE+=("${log_file}")
    done
done

# ---------------------------------------------------------------------------
# Summary table
# ---------------------------------------------------------------------------
log_hdr "Regression Build Summary"

W_SAMPLE=32; W_BOARD=20; W_STATUS=6; W_DUR=8
hdr_fmt="%-${W_SAMPLE}s  %-${W_BOARD}s  %-${W_STATUS}s  %s"
row_fmt="%-${W_SAMPLE}s  %-${W_BOARD}s  %-${W_STATUS}s  %s"

printf "${BOLD}${hdr_fmt}${RESET}\n" "SAMPLE" "BOARD" "STATUS" "DURATION"
printf '%0.s-' {1..72}; echo

{
    echo "REGRESSION BUILD SUMMARY — ${TIMESTAMP}"
    echo "Project: ${PROJECT_ROOT}"
    printf "${hdr_fmt}\n" "SAMPLE" "BOARD" "STATUS" "DURATION"
    printf '%0.s-' {1..72}; echo
} > "${SUMMARY_FILE}"

for i in "${!R_SAMPLE[@]}"; do
    case "${R_STATUS[$i]}" in
        PASS) c="${GREEN}" ;; FAIL) c="${RED}" ;; *) c="${YELLOW}" ;;
    esac
    printf "${c}${row_fmt}${RESET}\n" \
        "${R_SAMPLE[$i]}" "${R_BOARD[$i]}" "${R_STATUS[$i]}" "${R_ELAPSED[$i]}"
    printf "${row_fmt}\n" \
        "${R_SAMPLE[$i]}" "${R_BOARD[$i]}" "${R_STATUS[$i]}" "${R_ELAPSED[$i]}" \
        >> "${SUMMARY_FILE}"
done

printf '%0.s-' {1..72}; echo
total=$(( PASS_COUNT + FAIL_COUNT ))
echo -e "${BOLD}Results: ${GREEN}${PASS_COUNT} passed${RESET}, ${RED}${FAIL_COUNT} failed${RESET}, ${YELLOW}${SKIP_COUNT} skipped${RESET}  (${total} built)"
echo ""
echo "Summary : ${SUMMARY_FILE}"
echo "Logs    : ${LOG_DIR}/"

{
    printf '%0.s-' {1..72}; echo
    echo "Results: ${PASS_COUNT} passed, ${FAIL_COUNT} failed, ${SKIP_COUNT} skipped (${total} built)"
} >> "${SUMMARY_FILE}"

# Non-zero exit when any build failed
[[ ${FAIL_COUNT} -eq 0 ]]
