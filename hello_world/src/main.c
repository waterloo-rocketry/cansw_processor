/*
 * Copyright (c) 2012-2014 Wind River Systems, Inc.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <stdio.h>
#include <zephyr/logging/log.h>
#include <zephyr/drivers/adc.h>

LOG_MODULE_REGISTER(a, LOG_LEVEL_DBG);

static const struct adc_channel_cfg ch0_cfg_dt =
    ADC_CHANNEL_CFG_DT(DT_CHILD(DT_NODELABEL(adc1), channel_0));
static const struct adc_dt_spec adc = ADC_DT_SPEC_GET(adc1);

int main(void)
{
	
	LOG_INF("Hello World! \n");
	//printf("Hello World!\n");
	return 0;
}
