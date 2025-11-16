/*
 * BH1750.h
 *
 *  Created on: Nov 16, 2025
 *      Author: barte
 */

#ifndef INC_BH1750_H_
#define INC_BH1750_H_

#include <stdint.h>
#include "i2c.h"


#define BH1750_ADDR 	 0x23


#define POWER_DOWN       0x00
#define POWER_ON         0x01
#define RESET_CMD        0x07

#define CONT_H_RES_MODE   0x10
#define CONT_H_RES_MODE2  0x11
#define CONT_L_RES_MODE   0x13

#define ONE_TIME_H_RES_MODE   0x20
#define ONE_TIME_H_RES_MODE2  0x21
#define ONE_TIME_L_RES_MODE   0x23

enum WORKING_MODE
{
    MODE_CONT_STANDARD_RES,
    MODE_CONT_HIGH_RES,
    MODE_CONT_LOW_RES,
    MODE_ONE_TIME_STANDARD_RES,
    MODE_ONE_TIME_HIGH_RES,
    MODE_ONE_TIME_LOW_RES
};


void init_bh1750_sensor(I2C_HandleTypeDef* handle, enum WORKING_MODE mode);
float read_lux(I2C_HandleTypeDef* handle);


#endif /* INC_BH1750_H_ */
