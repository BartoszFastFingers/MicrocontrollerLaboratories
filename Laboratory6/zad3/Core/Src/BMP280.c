/*
 * BMP280.c
 *
 *  Created on: Nov 19, 2025
 *      Author: barte
 */


#include "BMP280.h"

#define BMP_TEMP_XLSB   	0xFC
#define BMP_TEMP_LSB    	0xFB
#define BMP_TEMP_MSB    	0xFA

#define BMP_PRESS_XLSB  	0xF9
#define BMP_PRESS_LSB   	0xF8
#define BMP_PRESS_MSB   	0xF7

#define BMP_CONFIG      	0xF5
#define BMP_CTRL_MEAS   	0xF4
#define BMP_STATUS      	0xF3
#define BMP_RESET       	0xE0
#define BMP_ID         		0xD0

#define BMP280_SPI_READ 	0x80
#define BMP280_SPI_WRITE	0x7F

uint8_t BMP280_ReadReg(BMP280* bmp, uint8_t reg) {
      uint8_t tx[2];
      uint8_t rx[2];

      tx[0] = reg | BMP280_SPI_READ;
      tx[1] = 0x00;

      HAL_GPIO_WritePin(bmp->cs.port, bmp->cs.pin, GPIO_PIN_RESET);
      HAL_SPI_TransmitReceive(bmp->spi, tx, rx, 2, HAL_MAX_DELAY);
      HAL_GPIO_WritePin(bmp->cs.port, bmp->cs.pin, GPIO_PIN_SET);

      return rx[1];
}

void BMP280_WriteReg(BMP280* bmp, uint8_t reg, uint8_t value) {
      uint8_t tx[2];

      tx[0] = reg & BMP280_SPI_WRITE;
      tx[1] = value;

      HAL_GPIO_WritePin(bmp->cs.port, bmp->cs.pin, GPIO_PIN_RESET);
      HAL_SPI_Transmit(bmp->spi, tx, 2, HAL_MAX_DELAY);
      HAL_GPIO_WritePin(bmp->cs.port, bmp->cs.pin, GPIO_PIN_SET);
}


void BMP280_setSleep_mode(BMP280* bmp)
{
	BMP280_WriteReg(bmp, BMP_CTRL_MEAS, 0x00);
}

void BMP280_setStandard_mode(BMP280* bmp)
{
	BMP280_WriteReg(bmp, BMP_CTRL_MEAS, 0x4B);
}

void BMP280_setPeriod_oneSecond_wihoutFiler(BMP280* bmp)
{
	BMP280_WriteReg(bmp, BMP_CONFIG, 0xA0);
}

void BMP280_readCalibration(BMP280* bmp)
{
    uint8_t lsb, msb;

    lsb = BMP280_ReadReg(bmp, 0x88);
    msb = BMP280_ReadReg(bmp, 0x89);

    bmp->dig_T[0] = (uint16_t)(msb << 8 | lsb);

    lsb = BMP280_ReadReg(bmp, 0x8A);
    msb = BMP280_ReadReg(bmp, 0x8B);
    bmp->dig_T[1] = (int16_t)(msb << 8 | lsb);

    lsb = BMP280_ReadReg(bmp, 0x8C);
    msb = BMP280_ReadReg(bmp, 0x8D);
    bmp->dig_T[2] = (int16_t)(msb << 8 | lsb);
}



void BMP280_init(BMP280* bmp, SPI_HandleTypeDef* spi,GPIO_TypeDef* gp_port, uint16_t gp_pin)
{
	bmp->spi = spi;
	bmp->cs.port = gp_port;
	bmp->cs.pin = gp_pin;
}

void BMP280_fast_temp_continous_measurment(BMP280* bmp)
{
	BMP280_setSleep_mode(bmp);
	BMP280_setPeriod_oneSecond_wihoutFiler(bmp);
	BMP280_setStandard_mode(bmp);
}

int32_t BMP280_read_temp_raw(BMP280* bmp)
{
    uint8_t msb = BMP280_ReadReg(bmp, BMP_TEMP_MSB);
    uint8_t lsb = BMP280_ReadReg(bmp, BMP_TEMP_LSB);
    uint8_t xlsb = BMP280_ReadReg(bmp, BMP_TEMP_XLSB);

    int32_t raw_temp = ((int32_t)msb << 12) | ((int32_t)lsb << 4) | ((int32_t)(xlsb >> 4) & 0x0F);
    return raw_temp;
}


float BMP280_read_temperature(BMP280* bmp)
{
    int32_t raw = BMP280_read_temp_raw(bmp);

    int32_t var1, var2;
    var1 = ((((raw >> 3) - ((int32_t)bmp->dig_T[0] << 1))) * ((int32_t)bmp->dig_T[1])) >> 11;
    var2 = (((((raw >> 4) - ((int32_t)bmp->dig_T[0])) * ((raw >> 4) - ((int32_t)bmp->dig_T[0]))) >> 12) * ((int32_t)bmp->dig_T[2])) >> 14;
    bmp->t_fine = var1 + var2;

    float T = (bmp->t_fine * 5 + 128) >> 8;
    return T / 100.0f;
}

