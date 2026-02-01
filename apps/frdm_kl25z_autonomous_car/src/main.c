/* main.c - Synchronization demo */

/*
 * Copyright (c) 2012-2014 Wind River Systems, Inc.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include "ada_app.h"
#include <zephyr/kernel.h>
#include <zephyr/sys/printk.h>

int main(void)
{
	printk(CONFIG_BOARD_TARGET " firmware (built on " __DATE__ " " __TIME__ ")\n");
  ada_appinit();
  ada_main();
	return 0;
}
