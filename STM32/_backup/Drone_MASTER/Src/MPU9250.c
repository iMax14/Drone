#include "MPU9250.h"


uint16_t MPU9250_ADDRESS = 0x68;  // Device address when ADO = gnd
uint8_t Tx1_data[2];
uint8_t Rx_data[21];

// data counts
int16_t _axcounts,_aycounts,_azcounts;
int16_t _gxcounts,_gycounts,_gzcounts;
int16_t _hxcounts,_hycounts,_hzcounts;
int16_t _tcounts;
// data buffer
float _ax, _ay, _az;
float _gx, _gy, _gz;
float _hx, _hy, _hz;
float _t;
// wake on motion
uint8_t _womThreshold;
// scale factors
float _accelScale;
float _gyroScale;
float _magScaleX, _magScaleY, _magScaleZ;
const float _tempScale = 333.87f;
const float _tempOffset = 21.0f;
// configuration
AccelRange _accelRange;
GyroRange _gyroRange;
DlpfBandwidth _bandwidth;
uint8_t _srd;
// gyro bias estimation
size_t _numSamples = 100;
double _gxbD, _gybD, _gzbD;
float _gxb, _gyb, _gzb;
// accel bias and scale factor estimation
double _axbD, _aybD, _azbD;
float _axmax, _aymax, _azmax;
float _axmin, _aymin, _azmin;
float _axb, _ayb, _azb;
float _axs = 1.0f;
float _ays = 1.0f;
float _azs = 1.0f;
// magnetometer bias and scale factor estimation
uint16_t _maxCounts = 1000;
float _deltaThresh = 0.3f;
uint8_t _coeff = 8;
uint16_t _counter;
float _framedelta, _delta;
float _hxfilt, _hyfilt, _hzfilt;
float _hxmax, _hymax, _hzmax;
float _hxmin, _hymin, _hzmin;
float _hxb, _hyb, _hzb;
float _hxs = 1.0f;
float _hys = 1.0f;
float _hzs = 1.0f;
float _avgs;
// transformation matrix
/* transform the accel and gyro axes to match the magnetometer axes */
const int16_t tX[3] = {0,  1,  0}; 
const int16_t tY[3] = {1,  0,  0};
const int16_t tZ[3] = {0,  0, -1};
// constants
const float G = 9.807f;
const float _d2r = 3.14159265359f/180.0f;



int setup_MPU9250(void){

		if(write_register(MPU9250_ADDRESS,PWR_MGMNT_1, CLOCK_SEL_PLL) < 0){
	    return -1;
		}
		if(write_register(MPU9250_ADDRESS,USER_CTRL, I2C_MST_EN) < 0){
			return -2;
		}
		if(write_register(MPU9250_ADDRESS,I2C_MST_CTRL, I2C_MST_CLK) < 0){
			return -3;
		}
	  writeAK8963Register(MPU9250_ADDRESS,AK8963_CNTL1,AK8963_PWR_DOWN);
		write_register(MPU9250_ADDRESS,PWR_MGMNT_1, PWR_RESET);
		HAL_Delay(1);
		writeAK8963Register(MPU9250_ADDRESS,AK8963_CNTL2,AK8963_RESET);
		if(write_register(MPU9250_ADDRESS,PWR_MGMNT_1, CLOCK_SEL_PLL) < 0){
			return -4;
		}
 
		if(write_register(MPU9250_ADDRESS,PWR_MGMNT_2, SEN_ENABLE) < 0){
			return -6;
		}
		if(write_register(MPU9250_ADDRESS,ACCEL_CONFIG, ACCEL_FS_SEL_16G) < 0){
			return -7;
		}
	  _accelScale = G * 16.0f/32767.5f; // setting the accel scale to 16G
		_accelRange = ACCEL_RANGE_16G;
	
		if(write_register(MPU9250_ADDRESS,GYRO_CONFIG, GYRO_FS_SEL_2000DPS) < 0){
			return -8;
		}
		_gyroScale = 2000.0f/32767.5f * _d2r; // setting the gyro scale to 2000DPS
		_gyroRange = GYRO_RANGE_2000DPS;
	
		if(write_register(MPU9250_ADDRESS,ACCEL_CONFIG2, ACCEL_DLPF_184) < 0){ 
			return -9;
		} 
		if(write_register(MPU9250_ADDRESS,CONFIG, GYRO_DLPF_184) < 0){ // setting gyro bandwidth to 184Hz
			return -10;
		}
		_bandwidth = DLPF_BANDWIDTH_184HZ;

		if(write_register(MPU9250_ADDRESS,SMPDIV, 0x00) < 0){ 
			return -11;
		}	 
	  _srd = 0;

		if(write_register(MPU9250_ADDRESS,USER_CTRL, I2C_MST_EN) < 0){
			return -12;
		}
		if(write_register(MPU9250_ADDRESS,I2C_MST_CTRL, I2C_MST_CLK) < 0){
			return -13;
		}
//		if( AK8963_WhoAmI() != 72 ){
//			return -14;
//		}
		if(writeAK8963Register(MPU9250_ADDRESS,AK8963_CNTL1,AK8963_PWR_DOWN) < 0){
			return -15;
		}
		HAL_Delay(100);
		if(writeAK8963Register(MPU9250_ADDRESS,AK8963_CNTL1,AK8963_FUSE_ROM) < 0){
			return -16;
		}
		HAL_Delay(100);
		readAK8963Registers(MPU9250_ADDRESS,AK8963_ASA,3,Rx_data);
		_magScaleX = ((((float)Rx_data[0]) - 128.0f)/(256.0f) + 1.0f) * 4912.0f / 32760.0f; // micro Tesla
		_magScaleY = ((((float)Rx_data[1]) - 128.0f)/(256.0f) + 1.0f) * 4912.0f / 32760.0f; // micro Tesla
		_magScaleZ = ((((float)Rx_data[2]) - 128.0f)/(256.0f) + 1.0f) * 4912.0f / 32760.0f; // micro Tesla 
		
		if(writeAK8963Register(MPU9250_ADDRESS,AK8963_CNTL1,AK8963_PWR_DOWN) < 0){
			return -17;
		}
		HAL_Delay(100);
		if(writeAK8963Register(MPU9250_ADDRESS,AK8963_CNTL1,AK8963_CNT_MEAS2) < 0){
			return -18;
		}
		HAL_Delay(100);
		if(write_register(MPU9250_ADDRESS,PWR_MGMNT_1, CLOCK_SEL_PLL) < 0){
			return -19;
		}
		readAK8963Registers(MPU9250_ADDRESS,AK8963_HXL,7,Rx_data);

		if(mpu9250_CalibrateMPU9250() <0) {
			return -20;
		}
		
		return 1;
}



/* reads registers from MPU9250 given a starting register address, number of bytes, and a pointer to store data */
int read_register(uint16_t Adress, uint16_t subAddress, uint8_t* data, uint8_t count){
	
	uint8_t addr_i2c = (uint8_t) Adress;
	uint8_t subaddr_i2c = (uint8_t) subAddress;

	if(HAL_I2C_Mem_Read(&hi2c1, addr_i2c << 1, subaddr_i2c, 1, data, count, 1000) != HAL_OK ) {
		while(1);
	}


	return 1;
}

HAL_StatusTypeDef status;

/* writes a byte to MPU9250 register given a register address and data */
int write_register(uint16_t Adress, uint16_t subAddress, uint8_t data){


	status = HAL_I2C_Mem_Write(&hi2c1, Adress << 1 , subAddress, 1, &data, 1, 1000);
	if(status != HAL_OK ) {
		while(1);
	}	


	/* read back the register */
//  read_register(Adress,subAddress,Rx_data,1);
//	
//  /* check the read back register against the written register */
//  if(Rx_data[0] == data) {
//    return 1;
//  }
//  else{
//    return -1;
//  }
	return 1;
	
}


/* writes a register to the AK8963 given a register address and data */
int writeAK8963Register(uint16_t Adress, uint16_t subAddress, uint8_t data){
  // set slave 0 to the AK8963 and set for write
	if (write_register(Adress,I2C_SLV0_ADDR,AK8963_I2C_ADDR) < 0) {
    return -1;
  }
  // set the register to the desired AK8963 sub address 
	if (write_register(Adress,I2C_SLV0_REG,subAddress) < 0) {
    return -2;
  }
  // store the data for write
	if (write_register(Adress,I2C_SLV0_DO,data) < 0) {
    return -3;
  }
  // enable I2C and send 1 byte
	if (write_register(Adress,I2C_SLV0_CTRL,I2C_SLV0_EN | (uint8_t)1) < 0) {
    return -4;
  }
	// read the register and confirm
	if (readAK8963Registers(Adress,subAddress,1,Rx_data) < 0) {
    return -5;
  }
//	if(Rx_data[0] == data) {
//  	return 1;
//  } else{
//  	return -6;
//  }
	return 1;
}

/* reads registers from the AK8963 */
int readAK8963Registers(uint16_t Adress, uint16_t subAddress, uint8_t count, uint8_t* dest){
  // set slave 0 to the AK8963 and set for read
	if (write_register(Adress,I2C_SLV0_ADDR,AK8963_I2C_ADDR | I2C_READ_FLAG) < 0) {
    return -1;
  }
  // set the register to the desired AK8963 sub address
	if (write_register(Adress,I2C_SLV0_REG,subAddress) < 0) {
    return -2;
  }
  // enable I2C and request the bytes
	if (write_register(Adress,I2C_SLV0_CTRL,I2C_SLV0_EN | count) < 0) {
    return -3;
  }
	HAL_Delay(1); // takes some time for these registers to fill
  // read the bytes off the MPU9250 EXT_SENS_DATA registers
	read_register(Adress,EXT_SENS_DATA_00,dest,count); 
  
	return 1;
}




uint8_t mpu9250_WhoAmI(void){
		read_register(MPU9250_ADDRESS,WHO_AM_I, Rx_data,1);

    return Rx_data[0];
}


uint8_t AK8963_WhoAmI(void){
		readAK8963Registers(MPU9250_ADDRESS,AK8963_WHO_AM_I,1,Rx_data);

    return Rx_data[0];
}




int mpu9250_CalibrateMPU9250(){
  // set the range, bandwidth, and srd
  if (setGyroRange(GYRO_RANGE_250DPS) < 0) {
    return -1;
  }
  if (setDlpfBandwidth(DLPF_BANDWIDTH_20HZ) < 0) {
    return -2;
  }
	if (setSrd(19) < 0) {
    return -3;
  }

  // take samples and find bias
  _gxbD = 0;
  _gybD = 0;
  _gzbD = 0;
  for (size_t i=0; i < _numSamples; i++) {
    readSensor();
    _gxbD += (getGyroX_rads() + _gxb)/((double)_numSamples);
    _gybD += (getGyroY_rads() + _gyb)/((double)_numSamples);
    _gzbD += (getGyroZ_rads() + _gzb)/((double)_numSamples);
    HAL_Delay(20);

  }
  _gxb = (float)_gxbD;
  _gyb = (float)_gybD;
  _gzb = (float)_gzbD;

  // set the range, bandwidth, and srd back to what they were
  if (setGyroRange(_gyroRange) < 0) {
    return -4;
  }
  if (setDlpfBandwidth(_bandwidth) < 0) {
    return -5;
  }
	if (setSrd(_srd) < 0) {
    return -6;
  }

  return 1;
}

/* sets the gyro full scale range to values other than default */
int setGyroRange(GyroRange range) {

  switch(range) {
    case GYRO_RANGE_250DPS: {
      // setting the gyro range to 250DPS
      if(write_register(MPU9250_ADDRESS,GYRO_CONFIG,GYRO_FS_SEL_250DPS) < 0){
        return -1;
      }
      _gyroScale = 250.0f/32767.5f * _d2r; // setting the gyro scale to 250DPS
      break;
    }
    case GYRO_RANGE_500DPS: {
      // setting the gyro range to 500DPS
      if(write_register(MPU9250_ADDRESS,GYRO_CONFIG,GYRO_FS_SEL_500DPS) < 0){
        return -1;
      }
      _gyroScale = 500.0f/32767.5f * _d2r; // setting the gyro scale to 500DPS
      break;  
    }
    case GYRO_RANGE_1000DPS: {
      // setting the gyro range to 1000DPS
      if(write_register(MPU9250_ADDRESS,GYRO_CONFIG,GYRO_FS_SEL_1000DPS) < 0){
        return -1;
      }
      _gyroScale = 1000.0f/32767.5f * _d2r; // setting the gyro scale to 1000DPS
      break;
    }
    case GYRO_RANGE_2000DPS: {
      // setting the gyro range to 2000DPS
      if(write_register(MPU9250_ADDRESS,GYRO_CONFIG,GYRO_FS_SEL_2000DPS) < 0){
        return -1;
      }
      _gyroScale = 2000.0f/32767.5f * _d2r; // setting the gyro scale to 2000DPS
      break;
    }
  }
  _gyroRange = range;
  return 1;
}

/* sets the DLPF bandwidth to values other than default */
int setDlpfBandwidth(DlpfBandwidth bandwidth) {

	
  switch(bandwidth) {
    case DLPF_BANDWIDTH_184HZ: {
      if(write_register(MPU9250_ADDRESS,ACCEL_CONFIG2,ACCEL_DLPF_184) < 0){ // setting accel bandwidth to 184Hz
        return -1;
      } 
      if(write_register(MPU9250_ADDRESS,CONFIG,GYRO_DLPF_184) < 0){ // setting gyro bandwidth to 184Hz
        return -2;
      }
      break;
    }
    case DLPF_BANDWIDTH_92HZ: {
      if(write_register(MPU9250_ADDRESS,ACCEL_CONFIG2,ACCEL_DLPF_92) < 0){ // setting accel bandwidth to 92Hz
        return -1;
      } 
      if(write_register(MPU9250_ADDRESS,CONFIG,GYRO_DLPF_92) < 0){ // setting gyro bandwidth to 92Hz
        return -2;
      }
      break;
    }
    case DLPF_BANDWIDTH_41HZ: {
      if(write_register(MPU9250_ADDRESS,ACCEL_CONFIG2,ACCEL_DLPF_41) < 0){ // setting accel bandwidth to 41Hz
        return -1;
      } 
      if(write_register(MPU9250_ADDRESS,CONFIG,GYRO_DLPF_41) < 0){ // setting gyro bandwidth to 41Hz
        return -2;
      }
      break;
    }
    case DLPF_BANDWIDTH_20HZ: {
      if(write_register(MPU9250_ADDRESS,ACCEL_CONFIG2,ACCEL_DLPF_20) < 0){ // setting accel bandwidth to 20Hz
        return -1;
      } 
      if(write_register(MPU9250_ADDRESS,CONFIG,GYRO_DLPF_20) < 0){ // setting gyro bandwidth to 20Hz
        return -2;
      }
      break;
    }
    case DLPF_BANDWIDTH_10HZ: {
      if(write_register(MPU9250_ADDRESS,ACCEL_CONFIG2,ACCEL_DLPF_10) < 0){ // setting accel bandwidth to 10Hz
        return -1;
      } 
      if(write_register(MPU9250_ADDRESS,CONFIG,GYRO_DLPF_10) < 0){ // setting gyro bandwidth to 10Hz
        return -2;
      }
      break;
    }
    case DLPF_BANDWIDTH_5HZ: {
      if(write_register(MPU9250_ADDRESS,ACCEL_CONFIG2,ACCEL_DLPF_5) < 0){ // setting accel bandwidth to 5Hz
        return -1;
      } 
      if(write_register(MPU9250_ADDRESS,CONFIG,GYRO_DLPF_5) < 0){ // setting gyro bandwidth to 5Hz
        return -2;
      }
      break;
    }
  }
  _bandwidth = bandwidth;
  return 1;
}

/* sets the sample rate divider to values other than default */
int setSrd(uint8_t srd) {

  /* setting the sample rate divider to 19 to facilitate setting up magnetometer */
  if(write_register(MPU9250_ADDRESS,SMPDIV,19) < 0){ // setting the sample rate divider
    return -1;
  }
  if(srd > 9){
    // set AK8963 to Power Down
    if(writeAK8963Register(MPU9250_ADDRESS,AK8963_CNTL1,AK8963_PWR_DOWN) < 0){
      return -2;
    }
    HAL_Delay(100); // long wait between AK8963 mode changes  
    // set AK8963 to 16 bit resolution, 8 Hz update rate
    if(writeAK8963Register(MPU9250_ADDRESS,AK8963_CNTL1,AK8963_CNT_MEAS1) < 0){
      return -3;
    }
    HAL_Delay(100); // long wait between AK8963 mode changes     
    // instruct the MPU9250 to get 7 bytes of data from the AK8963 at the sample rate
    readAK8963Registers(MPU9250_ADDRESS,AK8963_HXL,7,Rx_data);
  } else {
    // set AK8963 to Power Down
    if(writeAK8963Register(MPU9250_ADDRESS,AK8963_CNTL1,AK8963_PWR_DOWN) < 0){
      return -2;
    }
    HAL_Delay(100); // long wait between AK8963 mode changes  
    // set AK8963 to 16 bit resolution, 100 Hz update rate
    if(writeAK8963Register(MPU9250_ADDRESS,AK8963_CNTL1,AK8963_CNT_MEAS2) < 0){
      return -3;
    }
    HAL_Delay(100); // long wait between AK8963 mode changes     
    // instruct the MPU9250 to get 7 bytes of data from the AK8963 at the sample rate
    readAK8963Registers(MPU9250_ADDRESS,AK8963_HXL,7,Rx_data);    
  } 
  /* setting the sample rate divider */
  if(write_register(MPU9250_ADDRESS,SMPDIV,srd) < 0){ // setting the sample rate divider
    return -4;
  } 
  _srd = srd;
  return 1; 
}


/* reads the most current data from MPU9250 and stores in buffer */
int readSensor() {

  // grab the data from the MPU9250
  if (read_register(MPU9250_ADDRESS,ACCEL_OUT,Rx_data,21) < 0) {
    return -1;
  }
  // combine into 16 bit values
  _axcounts = (((int16_t)Rx_data[0]) << 8) | Rx_data[1];  
  _aycounts = (((int16_t)Rx_data[2]) << 8) | Rx_data[3];
  _azcounts = (((int16_t)Rx_data[4]) << 8) | Rx_data[5];
  _tcounts = (((int16_t)Rx_data[6]) << 8) | Rx_data[7];
  _gxcounts = (((int16_t)Rx_data[8]) << 8) | Rx_data[9];
  _gycounts = (((int16_t)Rx_data[10]) << 8) | Rx_data[11];
  _gzcounts = (((int16_t)Rx_data[12]) << 8) | Rx_data[13];
  _hxcounts = (((int16_t)Rx_data[15]) << 8) | Rx_data[14];
  _hycounts = (((int16_t)Rx_data[17]) << 8) | Rx_data[16];
  _hzcounts = (((int16_t)Rx_data[19]) << 8) | Rx_data[18];
  // transform and convert to float values
  _ax = (((float)(tX[0]*_axcounts + tX[1]*_aycounts + tX[2]*_azcounts) * _accelScale) - _axb)*_axs;
  _ay = (((float)(tY[0]*_axcounts + tY[1]*_aycounts + tY[2]*_azcounts) * _accelScale) - _ayb)*_ays;
  _az = (((float)(tZ[0]*_axcounts + tZ[1]*_aycounts + tZ[2]*_azcounts) * _accelScale) - _azb)*_azs;
  _gx = ((float)(tX[0]*_gxcounts + tX[1]*_gycounts + tX[2]*_gzcounts) * _gyroScale) - _gxb;
  _gy = ((float)(tY[0]*_gxcounts + tY[1]*_gycounts + tY[2]*_gzcounts) * _gyroScale) - _gyb;
  _gz = ((float)(tZ[0]*_gxcounts + tZ[1]*_gycounts + tZ[2]*_gzcounts) * _gyroScale) - _gzb;
  _hx = (((float)(_hxcounts) * _magScaleX) - _hxb)*_hxs;
  _hy = (((float)(_hycounts) * _magScaleY) - _hyb)*_hys;
  _hz = (((float)(_hzcounts) * _magScaleZ) - _hzb)*_hzs;
  _t = ((((float) _tcounts) - _tempOffset)/_tempScale) + _tempOffset;
	
  return 1;
}


/* returns the accelerometer measurement in the x direction, m/s/s */
float getAccelX_mss() {
  return _ax;
}
/* returns the accelerometer measurement in the y direction, m/s/s */
float getAccelY_mss() {
  return _ay;
}

/* returns the accelerometer measurement in the z direction, m/s/s */
float getAccelZ_mss() {
  return _az;
}

/* returns the gyroscope measurement in the x direction, rad/s */
float getGyroX_rads() {
  return _gx;
}

/* returns the gyroscope measurement in the y direction, rad/s */
float getGyroY_rads() {
  return _gy;
}

/* returns the gyroscope measurement in the z direction, rad/s */
float getGyroZ_rads() {
  return _gz;
}

/* returns the magnetometer measurement in the x direction, uT */
float getMagX_uT() {
  return _hx;
}

/* returns the magnetometer measurement in the y direction, uT */
float getMagY_uT() {
  return _hy;
}

/* returns the magnetometer measurement in the z direction, uT */
float getMagZ_uT() {
  return _hz;
}

/* returns the die temperature, C */
float getTemperature_C() {
  return _t;
}

