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
#include "mpu6050.h"

extern I2C_HandleTypeDef hi2c1;
extern TM_MPU6050_t MPU6050;
int set_gyro_angles = 1;

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

extern SPI_HandleTypeDef hspi1;


TM_MPU6050_Result_t MPU6050_Init(TM_MPU6050_t* DataStruct, TM_MPU6050_Device_t DeviceNumber) {
	
	/* Format I2C address */
	DataStruct->Address = MPU6050_I2C_ADDR | (uint8_t)DeviceNumber;
	uint8_t temp;
	temp = 0x00;

	  /* Disable the selected SPI peripheral */
  __HAL_SPI_DISABLE(&hspi1);
	
	if (HAL_I2C_Mem_Write(&hi2c1,DataStruct->Address ,MPU6050_PWR_MGMT_1,1,&temp,1,HAL_MAX_DELAY) != HAL_OK) {//Activate the MPU-6050
		/* Return error */
		return TM_MPU6050_Result_Error;
	}
	
	temp = 0x08;
	if (HAL_I2C_Mem_Write(&hi2c1,DataStruct->Address ,MPU6050_GYRO_CONFIG,1,&temp,1,HAL_MAX_DELAY) != HAL_OK) {//Configure the gyro (500dps full scale
		/* Return error */
		return TM_MPU6050_Result_Error;
	}
	
	temp = 0x10;
	if (HAL_I2C_Mem_Write(&hi2c1,DataStruct->Address ,MPU6050_ACCEL_CONFIG,1,&temp,1,HAL_MAX_DELAY) != HAL_OK) {//Configure the accelerometer (+/-8g)
		/* Return error */
		return TM_MPU6050_Result_Error;
	}
	
	temp = 0x13;
	if (HAL_I2C_Mem_Write(&hi2c1,DataStruct->Address ,MPU6050_CONFIG,1,&temp,1,HAL_MAX_DELAY) != HAL_OK) {//Configure Digital Low Pass Filter to ~43Hz)
		/* Return error */
		return TM_MPU6050_Result_Error;
	}	

	
	  /* Enable the selected SPI peripheral */
  __HAL_SPI_ENABLE(&hspi1);
	
	/* Return OK */
	return TM_MPU6050_Result_Ok;
}



TM_MPU6050_Result_t MPU6050_ReadAll(TM_MPU6050_t* DataStruct, TM_MPU6050_Device_t DeviceNumber) {
	/* Format I2C address */
	DataStruct->Address = MPU6050_I2C_ADDR | (uint8_t) DeviceNumber;
	
	uint8_t data[14];
	int16_t temp;
	
		  /* Disable the selected SPI peripheral */
  __HAL_SPI_DISABLE(&hspi1);
	
	if (HAL_I2C_Mem_Read(&hi2c1,DataStruct->Address ,MPU6050_ACCEL_XOUT_H,1,data,14,HAL_MAX_DELAY) != HAL_OK) {	/* Read full raw data, 14bytes */
		/* Return error */
		return TM_MPU6050_Result_Error;
	}

	/* Format accelerometer data */
	DataStruct->Accelerometer_Y = (int16_t)(data[0] << 8 | data[1]);	
	DataStruct->Accelerometer_X = (int16_t)(data[2] << 8 | data[3]);
	DataStruct->Accelerometer_Z = (int16_t)(data[4] << 8 | data[5]);

	/* Format temperature */
	temp = (data[6] << 8 | data[7]);
	DataStruct->Temperature = (float)(temp/340.0 + 36.53);
	
	/* Format gyroscope data */
	DataStruct->Gyroscope_roll = (int16_t)(data[8] << 8  | data[9]);
	DataStruct->Gyroscope_pitch = (int16_t)(data[10] << 8 | data[11]);
	DataStruct->Gyroscope_yaw = (int16_t)(data[12] << 8 | data[13]);
	DataStruct->Gyroscope_pitch *= -1;
	DataStruct->Gyroscope_yaw *= -1;
	

	  /* Enable the selected SPI peripheral */
  __HAL_SPI_ENABLE(&hspi1);
	
	/* Return OK */
	return TM_MPU6050_Result_Ok;
}
TM_MPU6050_Result_t MPU6050_Calibrate(TM_MPU6050_t* DataStruct, TM_MPU6050_Device_t DeviceNumber) {
	
	for (int cal_int = 0; cal_int < 2000 ; cal_int ++){                  //Run this code 2000 times
		if (MPU6050_ReadAll(&MPU6050, TM_MPU6050_Device_0) != TM_MPU6050_Result_Ok) {	
			/* Return error */
			return TM_MPU6050_Result_Error;
		}
		MPU6050_ReadAll(&MPU6050, TM_MPU6050_Device_0);                 //Read the raw acc and gyro data from the MPU-6050
		MPU6050.gyro_roll_cal  += MPU6050.Gyroscope_roll;                         //Add the gyro x-axis offset to the gyro_x_cal variable
		MPU6050.gyro_pitch_cal += MPU6050.Gyroscope_pitch;                         //Add the gyro y-axis offset to the gyro_y_cal variable
		MPU6050.gyro_yaw_cal   += MPU6050.Gyroscope_yaw;                         //Add the gyro z-axis offset to the gyro_z_cal variable
		
		HAL_Delay(1);
	}
	
  MPU6050.gyro_roll_cal  /= 2000;                                          //Divide the gyro_x_cal variable by 2000 to get the avarage offset
  MPU6050.gyro_pitch_cal /= 2000;                                          //Divide the gyro_y_cal variable by 2000 to get the avarage offset
  MPU6050.gyro_yaw_cal   /= 2000;                                          //Divide the gyro_z_cal variable by 2000 to get the avarage offset
	
	/* Return OK */
	return TM_MPU6050_Result_Ok;
}

TM_MPU6050_Result_t MPU6050_ReadConvert_Pitch_Roll(TM_MPU6050_t* DataStruct, TM_MPU6050_Device_t DeviceNumber) {
	long acc_total_vector;
	
	if (MPU6050_ReadAll(&MPU6050, TM_MPU6050_Device_0) != TM_MPU6050_Result_Ok) {	
		/* Return error */
		return TM_MPU6050_Result_Error;
	}

	MPU6050.Gyroscope_roll  -= MPU6050.gyro_roll_cal;      //Subtract the offset calibration value from the raw gyro_x value
	MPU6050.Gyroscope_pitch -= MPU6050.gyro_pitch_cal;     //Subtract the offset calibration value from the raw gyro_y value
	MPU6050.Gyroscope_yaw   -= MPU6050.gyro_yaw_cal;       //Subtract the offset calibration value from the raw gyro_z value	

	//65.5 = 1 deg/sec (check the datasheet of the MPU-6050 for more information).
  MPU6050.gyro_roll_input = (MPU6050.gyro_roll_input * 0.7) + (((double) MPU6050.Gyroscope_roll / 65.5) * 0.3);   		//Gyro pid input is deg/sec.
  MPU6050.gyro_pitch_input = (MPU6050.gyro_pitch_input * 0.7) + (((double) MPU6050.Gyroscope_pitch / 65.5) * 0.3);		//Gyro pid input is deg/sec.
  MPU6050.gyro_yaw_input = (MPU6050.gyro_yaw_input * 0.7) + (((double) MPU6050.Gyroscope_yaw / 65.5) * 0.3);      		//Gyro pid input is deg/sec.
	
/*Gyro angle calculations*/
		
	//0.0000611 = 1 / (250Hz / 65.5)
	MPU6050.angle_pitch += MPU6050.Gyroscope_pitch * 0.0000611;                                   //Calculate the traveled pitch angle and add this to the angle_pitch variable
	MPU6050.angle_roll  += MPU6050.Gyroscope_roll * 0.0000611;                                   //Calculate the traveled roll angle and add this to the angle_roll variable

	//0.000001066 = 0.0000611 * (3.142(PI) / 180degr) The Arduino sin function is in radians
	MPU6050.angle_pitch -= MPU6050.angle_roll * sin(MPU6050.Gyroscope_yaw * 0.000001066);               //If the IMU has yawed transfer the roll angle to the pitch angel
	MPU6050.angle_roll  += MPU6050.angle_pitch * sin(MPU6050.Gyroscope_yaw * 0.000001066);               //If the IMU has yawed transfer the pitch angle to the roll angel

/*Accelerometer angle calculations*/
		
	acc_total_vector = sqrt((MPU6050.Accelerometer_X*MPU6050.Accelerometer_X)+(MPU6050.Accelerometer_Y*MPU6050.Accelerometer_Y)+(MPU6050.Accelerometer_Z*MPU6050.Accelerometer_Z));  //Calculate the total accelerometer vector
	//57.296 = 1 / (3.142 / 180) The Arduino asin function is in radians
	if (abs(MPU6050.Accelerometer_Y) < acc_total_vector) {                                             //Prevent the asin function to produce a NaN.
		MPU6050.angle_pitch_acc = asin((float)MPU6050.Accelerometer_Y/acc_total_vector)* 57.296;       //Calculate the pitch angle
  }
  if (abs(MPU6050.Accelerometer_X) < acc_total_vector) {                                             //Prevent the asin function to produce a NaN.
		MPU6050.angle_roll_acc = asin((float)MPU6050.Accelerometer_X/acc_total_vector)* -57.296;       //Calculate the roll angle
  }
	
	MPU6050.angle_pitch = MPU6050.angle_pitch * 0.9996 + MPU6050.angle_pitch_acc * 0.0004;     //Correct the drift of the gyro pitch angle with the accelerometer pitch angle
	MPU6050.angle_roll = MPU6050.angle_roll * 0.9996 + MPU6050.angle_roll_acc * 0.0004;        //Correct the drift of the gyro roll angle with the accelerometer roll angle

	
	MPU6050.pitch_level_adjust = MPU6050.angle_pitch * 15;                                           //Calculate the pitch angle correction.
  MPU6050.roll_level_adjust = MPU6050.angle_roll * 15;                                             //Calculate the roll angle correction.

		
	/* Return OK */
	return TM_MPU6050_Result_Ok;
}

