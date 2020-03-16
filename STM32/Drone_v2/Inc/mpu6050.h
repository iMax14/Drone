#include <stdio.h>
#include <stdlib.h>
#include "main.h"

/**
 * @brief  Data rates predefined constants
 * @{
 */
#define TM_MPU6050_DataRate_8KHz       0   /*!< Sample rate set to 8 kHz */
#define TM_MPU6050_DataRate_4KHz       1   /*!< Sample rate set to 4 kHz */
#define TM_MPU6050_DataRate_2KHz       3   /*!< Sample rate set to 2 kHz */
#define TM_MPU6050_DataRate_1KHz       7   /*!< Sample rate set to 1 kHz */
#define TM_MPU6050_DataRate_500Hz      15  /*!< Sample rate set to 500 Hz */
#define TM_MPU6050_DataRate_250Hz      31  /*!< Sample rate set to 250 Hz */
#define TM_MPU6050_DataRate_125Hz      63  /*!< Sample rate set to 125 Hz */
#define TM_MPU6050_DataRate_100Hz      79  /*!< Sample rate set to 100 Hz */
 
/**
 * @defgroup TM_MPU6050_Typedefs
 * @brief    Library Typedefs
 * @{
 */

/**
 * @brief  MPU6050 can have 2 different slave addresses, depends on it's input AD0 pin
 *         This feature allows you to use 2 different sensors with this library at the same time
 */
typedef enum _TM_MPU6050_Device_t {
	TM_MPU6050_Device_0 = 0x00, /*!< AD0 pin is set to low */
	TM_MPU6050_Device_1 = 0x02  /*!< AD0 pin is set to high */
} TM_MPU6050_Device_t;

/**
 * @brief  MPU6050 result enumeration	
 */
typedef enum _TM_MPU6050_Result_t {
	TM_MPU6050_Result_Ok = 0x00,          /*!< Everything OK */
	TM_MPU6050_Result_Error,              /*!< Unknown error */
	TM_MPU6050_Result_DeviceNotConnected, /*!< There is no device with valid slave address */
	TM_MPU6050_Result_DeviceInvalid       /*!< Connected device with address is not MPU6050 */
} TM_MPU6050_Result_t;

/**
 * @brief  Parameters for accelerometer range
 */
typedef enum _TM_MPU6050_Accelerometer_t {
	TM_MPU6050_Accelerometer_2G = 0x00, /*!< Range is +- 2G */
	TM_MPU6050_Accelerometer_4G = 0x01, /*!< Range is +- 4G */
	TM_MPU6050_Accelerometer_8G = 0x02, /*!< Range is +- 8G */
	TM_MPU6050_Accelerometer_16G = 0x03 /*!< Range is +- 16G */
} TM_MPU6050_Accelerometer_t;

/**
 * @brief  Parameters for gyroscope range
 */
typedef enum _TM_MPU6050_Gyroscope_t {
	TM_MPU6050_Gyroscope_250s = 0x00,  /*!< Range is +- 250 degrees/s */
	TM_MPU6050_Gyroscope_500s = 0x01,  /*!< Range is +- 500 degrees/s */
	TM_MPU6050_Gyroscope_1000s = 0x02, /*!< Range is +- 1000 degrees/s */
	TM_MPU6050_Gyroscope_2000s = 0x03  /*!< Range is +- 2000 degrees/s */
} TM_MPU6050_Gyroscope_t;

/**
 * @brief  Main MPU6050 structure
 */
typedef struct _TM_MPU6050_t {
	/* Private */
	uint8_t Address;         /*!< I2C address of device. Only for private use */
	float Gyro_Mult;         /*!< Gyroscope corrector from raw data to "degrees/s". Only for private use */
	float Acce_Mult;         /*!< Accelerometer corrector from raw data to "g". Only for private use */
	/* Public */
	int16_t Accelerometer_X; /*!< Accelerometer value X axis */
	int16_t Accelerometer_Y; /*!< Accelerometer value Y axis */
	int16_t Accelerometer_Z; /*!< Accelerometer value Z axis */
	int16_t Gyroscope_roll;     /*!< Gyroscope value X axis */
	int16_t Gyroscope_pitch;     /*!< Gyroscope value Y axis */
	int16_t Gyroscope_yaw;     /*!< Gyroscope value Z axis */
	double gyro_roll_cal, gyro_pitch_cal, gyro_yaw_cal;

	float Temperature;       /*!< Temperature in degrees */
	
	double gyro_pitch_input,gyro_roll_input,gyro_yaw_input;
	double roll_level_adjust, pitch_level_adjust;

	
	double angle_pitch, angle_roll;
	double angle_roll_acc, angle_pitch_acc;

} TM_MPU6050_t;



/**
 * @defgroup TM_MPU6050_Functions
 * @brief    Library Functions
 * @{
 */

/**
 * @brief  Initializes MPU6050 and I2C peripheral
 * @param  *DataStruct: Pointer to empty @ref TM_MPU6050_t structure
 * @param  DeviceNumber: MPU6050 has one pin, AD0 which can be used to set address of device.
 *          This feature allows you to use 2 different sensors on the same board with same library.
 *          If you set AD0 pin to low, then this parameter should be TM_MPU6050_Device_0,
 *          but if AD0 pin is high, then you should use TM_MPU6050_Device_1
 *          
 *          Parameter can be a value of @ref TM_MPU6050_Device_t enumeration
 * @param  AccelerometerSensitivity: Set accelerometer sensitivity. This parameter can be a value of @ref TM_MPU6050_Accelerometer_t enumeration
 * @param  GyroscopeSensitivity: Set gyroscope sensitivity. This parameter can be a value of @ref TM_MPU6050_Gyroscope_t enumeration
 * @retval Initialization status:
 *            - TM_MPU6050_Result_t: Everything OK
 *            - Other member: in other cases
 */
TM_MPU6050_Result_t MPU6050_Init(TM_MPU6050_t* DataStruct, TM_MPU6050_Device_t DeviceNumber);


/**
 * @brief  Reads accelerometer, gyroscope and temperature data from sensor
 * @param  *DataStruct: Pointer to @ref TM_MPU6050_t structure to store data to
 * @param  DeviceNumber: MPU6050 has one pin, AD0 which can be used to set address of device.
 * @retval Member of @ref TM_MPU6050_Result_t:
 *            - TM_MPU6050_Result_Ok: everything is OK
 *            - Other: in other cases
 */
TM_MPU6050_Result_t MPU6050_ReadAll(TM_MPU6050_t* DataStruct, TM_MPU6050_Device_t DeviceNumber);
/**
 * @brief  Calibrate the MPU6050
 * @param  *DataStruct: Pointer to @ref TM_MPU6050_t structure to store data to
   @param  DeviceNumber: MPU6050 has one pin, AD0 which can be used to set address of device.
 * @retval Member of @ref TM_MPU6050_Result_t:
 *            - TM_MPU6050_Result_Ok: everything is OK
 *            - Other: in other cases
 */
TM_MPU6050_Result_t MPU6050_Calibrate(TM_MPU6050_t* DataStruct, TM_MPU6050_Device_t DeviceNumber);

/**
 * @brief  Read and convert read data into Pitch and roll values
 * @param  *DataStruct: Pointer to @ref TM_MPU6050_t structure to store data to
   @param  DeviceNumber: MPU6050 has one pin, AD0 which can be used to set address of device.
 * @retval Member of @ref TM_MPU6050_Result_t:
 *            - TM_MPU6050_Result_Ok: everything is OK
 *            - Other: in other cases
 */
TM_MPU6050_Result_t MPU6050_ReadConvert_Pitch_Roll(TM_MPU6050_t* DataStruct, TM_MPU6050_Device_t DeviceNumber);
