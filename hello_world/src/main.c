/*
 * Copyright (c) 2012-2014 Wind River Systems, Inc.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <stdio.h>
#include <zephyr/logging/log.h>
#include <zephyr/drivers/can.h>
#include <zephyr/device.h>

LOG_MODULE_REGISTER(a, LOG_LEVEL_DBG);
#define FDCAN1 DT_NODELABEL(fdcan1)
static const struct device *const can_dev = DEVICE_DT_GET(FDCAN1);

int main(void)
{
	
	LOG_INF("Hello World! \n");
	//printf("Hello World!\n");

	return 0;
}
