/**	
 * |----------------------------------------------------------------------
 * | Copyright (c) 2016 Tilen MAJERLE
 * |  
 * | Permission is hereby granted, free of charge, to any person
 * | obtaining a copy of this software and associated documentation
 * | files (the "Software"), to deal in the Software without restriction,
 * | including without limitation the rights to use, copy, modify, merge,
 * | publish, distribute, sublicense, and/or sell copies of the Software, 
 * | and to permit persons to whom the Software is furnished to do so, 
 * | subject to the following conditions:
 * | 
 * | The above copyright notice and this permission notice shall be
 * | included in all copies or substantial portions of the Software.
 * | 
 * | THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * | EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * | OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE
 * | AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * | HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * | WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
 * | FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * | OTHER DEALINGS IN THE SOFTWARE.
 * |----------------------------------------------------------------------
 */
#include "tm_stm32_mpu6050.h"

/* Default I2C address */
#define MPU6050_I2C_ADDR			0xD0

/* Who I am register value */
#define MPU6050_I_AM				0x68

/* MPU6050 registers */
#define MPU6050_AUX_VDDIO			0x01
#define MPU6050_SMPLRT_DIV			0x19
#define MPU6050_CONFIG				0x1A
#define MPU6050_GYRO_CONFIG			0x1B
#define MPU6050_ACCEL_CONFIG		0x1C
#define MPU6050_MOTION_THRESH		0x1F
#define MPU6050_INT_PIN_CFG			0x37
#define MPU6050_INT_ENABLE			0x38
#define MPU6050_INT_STATUS			0x3A
#define MPU6050_ACCEL_XOUT_H		0x3B
#define MPU6050_ACCEL_XOUT_L		0x3C
#define MPU6050_ACCEL_YOUT_H		0x3D
#define MPU6050_ACCEL_YOUT_L		0x3E
#define MPU6050_ACCEL_ZOUT_H		0x3F
#define MPU6050_ACCEL_ZOUT_L		0x40
#define MPU6050_TEMP_OUT_H			0x41
#define MPU6050_TEMP_OUT_L			0x42
#define MPU6050_GYRO_XOUT_H			0x43
#define MPU6050_GYRO_XOUT_L			0x44
#define MPU6050_GYRO_YOUT_H			0x45
#define MPU6050_GYRO_YOUT_L			0x46
#define MPU6050_GYRO_ZOUT_H			0x47
#define MPU6050_GYRO_ZOUT_L			0x48
#define MPU6050_MOT_DETECT_STATUS	0x61
#define MPU6050_SIGNAL_PATH_RESET	0x68
#define MPU6050_MOT_DETECT_CTRL		0x69
#define MPU6050_USER_CTRL			0x6A
#define MPU6050_PWR_MGMT_1			0x6B
#define MPU6050_PWR_MGMT_2			0x6C
#define MPU6050_FIFO_COUNTH			0x72
#define MPU6050_FIFO_COUNTL			0x73
#define MPU6050_FIFO_R_W			0x74
#define MPU6050_WHO_AM_I			0x75

/* Gyro sensitivities in degrees/s */
#define MPU6050_GYRO_SENS_250		((float) 131)
#define MPU6050_GYRO_SENS_500		((float) 65.5)
#define MPU6050_GYRO_SENS_1000		((float) 32.8)
#define MPU6050_GYRO_SENS_2000		((float) 16.4)

/* Acce sensitivities in g/s */
#define MPU6050_ACCE_SENS_2			((float) 16384)
#define MPU6050_ACCE_SENS_4			((float) 8192)
#define MPU6050_ACCE_SENS_8			((float) 4096)
#define MPU6050_ACCE_SENS_16		((float) 2048)

uint8_t temp;

TM_MPU6050_Result_t TM_MPU6050_Init(TM_MPU6050_t* DataStruct, TM_MPU6050_Device_t DeviceNumber, TM_MPU6050_Accelerometer_t AccelerometerSensitivity, TM_MPU6050_Gyroscope_t GyroscopeSensitivity) {

	/* Format I2C address */
	DataStruct->Address = MPU6050_I2C_ADDR | (uint8_t)DeviceNumber;
	
	/* Check who am I */
	HAL_I2C_Mem_Read(&hi2c1,DataStruct->Address,MPU6050_WHO_AM_I << 1,1,&temp,1,1000);
	if (temp != MPU6050_I_AM) {
		/* Return error */
		return TM_MPU6050_Result_DeviceInvalid;
	}
	
	/* Wakeup MPU6050 */
	HAL_I2C_Mem_Write(&hi2c1,DataStruct->Address << 1,MPU6050_PWR_MGMT_1,1,0x00,1,1000);
	/* Set sample rate to 1kHz */
	TM_MPU6050_SetDataRate(DataStruct, TM_MPU6050_DataRate_1KHz);
	
	/* Config accelerometer */
	TM_MPU6050_SetAccelerometer(DataStruct, AccelerometerSensitivity);
	
	/* Config accelerometer */
	TM_MPU6050_SetGyroscope(DataStruct, GyroscopeSensitivity);
	
	/* Return OK */
	return TM_MPU6050_Result_Ok;
}

TM_MPU6050_Result_t TM_MPU6050_SetGyroscope(TM_MPU6050_t* DataStruct, TM_MPU6050_Gyroscope_t GyroscopeSensitivity) {
	uint8_t temp;
	
	/* Config gyroscope */
	HAL_I2C_Mem_Read(&hi2c1,DataStruct->Address << 1,MPU6050_GYRO_CONFIG,1,&temp,1,1000);
	temp = (temp & 0xE7) | (uint8_t)GyroscopeSensitivity << 3;
	HAL_I2C_Mem_Write(&hi2c1,DataStruct->Address << 1,MPU6050_GYRO_CONFIG,1,&temp,1,1000);	
	
	
	switch (GyroscopeSensitivity) {
		case TM_MPU6050_Gyroscope_250s:
			DataStruct->Gyro_Mult = (float)1 / MPU6050_GYRO_SENS_250; 
			break;
		case TM_MPU6050_Gyroscope_500s:
			DataStruct->Gyro_Mult = (float)1 / MPU6050_GYRO_SENS_500; 
			break;
		case TM_MPU6050_Gyroscope_1000s:
			DataStruct->Gyro_Mult = (float)1 / MPU6050_GYRO_SENS_1000; 
			break;
		case TM_MPU6050_Gyroscope_2000s:
			DataStruct->Gyro_Mult = (float)1 / MPU6050_GYRO_SENS_2000; 
		default:
			break;
	}
	
	/* Return OK */
	return TM_MPU6050_Result_Ok;
}

TM_MPU6050_Result_t TM_MPU6050_SetAccelerometer(TM_MPU6050_t* DataStruct, TM_MPU6050_Accelerometer_t AccelerometerSensitivity) {
	uint8_t temp;
	
	/* Config accelerometer */
	HAL_I2C_Mem_Read(&hi2c1,DataStruct->Address << 1,MPU6050_ACCEL_CONFIG,1,&temp,1,1000);
	temp = (temp & 0xE7) | (uint8_t)AccelerometerSensitivity << 3;
	HAL_I2C_Mem_Write(&hi2c1,DataStruct->Address << 1,MPU6050_ACCEL_CONFIG,1,&temp,1,1000);

	/* Set sensitivities for multiplying gyro and accelerometer data */
	switch (AccelerometerSensitivity) {
		case TM_MPU6050_Accelerometer_2G:
			DataStruct->Acce_Mult = (float)1 / MPU6050_ACCE_SENS_2; 
			break;
		case TM_MPU6050_Accelerometer_4G:
			DataStruct->Acce_Mult = (float)1 / MPU6050_ACCE_SENS_4; 
			break;
		case TM_MPU6050_Accelerometer_8G:
			DataStruct->Acce_Mult = (float)1 / MPU6050_ACCE_SENS_8; 
			break;
		case TM_MPU6050_Accelerometer_16G:
			DataStruct->Acce_Mult = (float)1 / MPU6050_ACCE_SENS_16; 
		default:
			break;
	}
	
	/* Return OK */
	return TM_MPU6050_Result_Ok;
}

TM_MPU6050_Result_t TM_MPU6050_SetDataRate(TM_MPU6050_t* DataStruct, uint8_t rate) {
	
	
	/* Set data sample rate */
	if (HAL_I2C_Mem_Write(&hi2c1,DataStruct->Address << 1,MPU6050_SMPLRT_DIV,1,&rate,1,1000) != HAL_OK) {
		/* Return error */
		return TM_MPU6050_Result_Error;
	}
	
	/* Return OK */
	return TM_MPU6050_Result_Ok;
}
	



TM_MPU6050_Result_t TM_MPU6050_ReadAccelerometer(TM_MPU6050_t* DataStruct) {
	uint8_t data[6];
	
	/* Read accelerometer data */
	HAL_I2C_Mem_Read(&hi2c1,DataStruct->Address << 1,MPU6050_ACCEL_XOUT_H,1,data,6,1000);

	/* Format */
	DataStruct->Accelerometer_X = (int16_t)(data[0] << 8 | data[1]);	
	DataStruct->Accelerometer_Y = (int16_t)(data[2] << 8 | data[3]);
	DataStruct->Accelerometer_Z = (int16_t)(data[4] << 8 | data[5]);
	
	/* Return OK */
	return TM_MPU6050_Result_Ok;
}

TM_MPU6050_Result_t TM_MPU6050_ReadGyroscope(TM_MPU6050_t* DataStruct) {
	uint8_t data[6];
	
	/* Read gyroscope data */
	HAL_I2C_Mem_Read(&hi2c1,DataStruct->Address << 1,MPU6050_GYRO_XOUT_H,1,data,6,1000);

	/* Format */
	DataStruct->Gyroscope_X = (int16_t)(data[0] << 8 | data[1]);
	DataStruct->Gyroscope_Y = (int16_t)(data[2] << 8 | data[3]);
	DataStruct->Gyroscope_Z = (int16_t)(data[4] << 8 | data[5]);

	/* Return OK */
	return TM_MPU6050_Result_Ok;
}

TM_MPU6050_Result_t TM_MPU6050_ReadTemperature(TM_MPU6050_t* DataStruct) {
	uint8_t data[2];
	int16_t temp;
	
	/* Read temperature */
	HAL_I2C_Mem_Read(&hi2c1,DataStruct->Address << 1,MPU6050_TEMP_OUT_H,1,data,2,1000);

	/* Format temperature */
	temp = (data[0] << 8 | data[1]);
	DataStruct->Temperature = (float)((int16_t)temp / (float)340.0 + (float)36.53);
	
	/* Return OK */
	return TM_MPU6050_Result_Ok;
}

TM_MPU6050_Result_t TM_MPU6050_ReadAll(TM_MPU6050_t* DataStruct) {
	uint8_t data[14];
	int16_t temp;
	
	/* Read full raw data, 14bytes */
	HAL_I2C_Mem_Read(&hi2c1,DataStruct->Address << 1,MPU6050_ACCEL_XOUT_H,1,data,14,1000);

	/* Format accelerometer data */
	DataStruct->Accelerometer_X = (int16_t)(data[0] << 8 | data[1]);	
	DataStruct->Accelerometer_Y = (int16_t)(data[2] << 8 | data[3]);
	DataStruct->Accelerometer_Z = (int16_t)(data[4] << 8 | data[5]);

	/* Format temperature */
	temp = (data[6] << 8 | data[7]);
	DataStruct->Temperature = (float)((float)((int16_t)temp) / (float)340.0 + (float)36.53);
	
	/* Format gyroscope data */
	DataStruct->Gyroscope_X = (int16_t)(data[8] << 8 | data[9]);
	DataStruct->Gyroscope_Y = (int16_t)(data[10] << 8 | data[11]);
	DataStruct->Gyroscope_Z = (int16_t)(data[12] << 8 | data[13]);

	/* Return OK */
	return TM_MPU6050_Result_Ok;
}

//TM_MPU6050_Result_t TM_MPU6050_Calibrate(TM_MPU6050_t* DataStruct) {
//	uint8_t data[14];
//	
//	/* Read full raw data, 14bytes */
//	HAL_I2C_Mem_Read(&hi2c1,DataStruct->Address,MPU6050_ACCEL_XOUT_H,1,data,14,100);

//	/* Format accelerometer data */
//	DataStruct->Accelerometer_X_offset = (int16_t)(data[0] << 8 | data[1]);	
//	DataStruct->Accelerometer_Y_offset = (int16_t)(data[2] << 8 | data[3]);
//	DataStruct->Accelerometer_Z_offset = (int16_t)(data[4] << 8 | data[5]);

//	
//	/* Format gyroscope data */
//	DataStruct->Gyroscope_X_offset = (int16_t)(data[8] << 8 | data[9]);
//	DataStruct->Gyroscope_Y_offset = (int16_t)(data[10] << 8 | data[11]);
//	DataStruct->Gyroscope_Z_offset = (int16_t)(data[12] << 8 | data[13]);

//	/* Return OK */
//	return TM_MPU6050_Result_Ok;
//}
