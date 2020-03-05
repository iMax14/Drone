#ifndef MPU9250_H
#define MPU9250_H

#include "MPU9250RegisterMap.h"
#include "i2c.h"
#include "spi.h"
#include "tim.h"
#include "gpio.h"

typedef enum
{
	GYRO_RANGE_250DPS,
	GYRO_RANGE_500DPS,
	GYRO_RANGE_1000DPS,
	GYRO_RANGE_2000DPS
}GyroRange;

typedef enum
{
	ACCEL_RANGE_2G,
	ACCEL_RANGE_4G,
	ACCEL_RANGE_8G,
	ACCEL_RANGE_16G    
}AccelRange;

typedef enum 
{
	DLPF_BANDWIDTH_184HZ,
	DLPF_BANDWIDTH_92HZ,
	DLPF_BANDWIDTH_41HZ,
	DLPF_BANDWIDTH_20HZ,
	DLPF_BANDWIDTH_10HZ,
	DLPF_BANDWIDTH_5HZ
}DlpfBandwidth;

typedef enum  
{
	LP_ACCEL_ODR_0_24HZ = 0,
	LP_ACCEL_ODR_0_49HZ = 1,
	LP_ACCEL_ODR_0_98HZ = 2,
	LP_ACCEL_ODR_1_95HZ = 3,
	LP_ACCEL_ODR_3_91HZ = 4,
	LP_ACCEL_ODR_7_81HZ = 5,
	LP_ACCEL_ODR_15_63HZ = 6,
	LP_ACCEL_ODR_31_25HZ = 7,
	LP_ACCEL_ODR_62_50HZ = 8,
	LP_ACCEL_ODR_125HZ = 9,
	LP_ACCEL_ODR_250HZ = 10,
	LP_ACCEL_ODR_500HZ = 11
}LpAccelOdr;


int setup_MPU9250(void);
uint8_t mpu9250_WhoAmI(void);
uint8_t AK8963_WhoAmI(void);
int mpu9250_CalibrateMPU9250(void);
int read_register(uint16_t Adress, uint16_t subAdress, uint8_t* data, uint8_t count);
int write_register(uint16_t Adress, uint16_t subAdress, uint8_t data);
int writeAK8963Register(uint16_t Adress, uint16_t subAddress, uint8_t data);
int readAK8963Registers(uint16_t Adress, uint16_t subAddress, uint8_t count, uint8_t* dest);
int setGyroRange(GyroRange range);
int setDlpfBandwidth(DlpfBandwidth bandwidth);
int setSrd(uint8_t srd);
int readSensor(void);
float getGyroX_rads(void);
float getGyroY_rads(void);
float getGyroZ_rads(void);
float getAccelX_mss(void);
float getAccelY_mss(void);
float getAccelZ_mss(void);
float getMagX_uT(void);
float getMagY_uT(void);
float getMagZ_uT(void);
float getTemperature_C(void);

#endif // MPU9250
