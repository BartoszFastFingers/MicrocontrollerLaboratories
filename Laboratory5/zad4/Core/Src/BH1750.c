/*
 * BH1750.c
 *
 *  Created on: Nov 16, 2025
 *      Author: barte
 */

#include "BH1750.h"



void init_bh1750_sensor(I2C_HandleTypeDef* handle, enum WORKING_MODE mode)
{
	uint8_t cmd = POWER_ON;

	HAL_I2C_Master_Transmit(handle, BH1750_ADDR << 1, &cmd, 1, HAL_MAX_DELAY);

	switch(mode)
	{
		case MODE_CONT_STANDARD_RES: cmd = CONT_H_RES_MODE; break;
	    case MODE_CONT_HIGH_RES: cmd = CONT_H_RES_MODE2; break;
	    case MODE_CONT_LOW_RES: cmd = CONT_L_RES_MODE; break;
	    case MODE_ONE_TIME_STANDARD_RES: cmd = ONE_TIME_H_RES_MODE; break;
	    case MODE_ONE_TIME_HIGH_RES: cmd = ONE_TIME_H_RES_MODE2; break;
	    case MODE_ONE_TIME_LOW_RES: cmd = ONE_TIME_L_RES_MODE; break;
	    default: return;
	}

	HAL_I2C_Master_Transmit(handle, BH1750_ADDR << 1, &cmd, 1, HAL_MAX_DELAY);
}

float read_lux(I2C_HandleTypeDef* handle)
{
	uint8_t data[2];
	uint16_t raw;
	float lux;

	if(HAL_I2C_Master_Receive(handle, BH1750_ADDR << 1, data, 2, HAL_MAX_DELAY) != HAL_OK)
	   return 0.0f;

	raw = (data[0] << 8) | data[1];
	lux = (float)raw / 1.2f;

	return lux;


}
