/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "i2c.h"
#include "spi.h"
#include "tim.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "MPU9250.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
struct Input_captures{
	int32_t capt1[6];
	int32_t capt2[6];
	int is_First_Captured[6];
}values;

struct Remote{
	int32_t roll;
	int32_t pitch;
	int32_t throttle;
	int32_t yaw;
	int32_t vrb;
	int32_t vra;
}cmd;

struct MPU_9250{
	struct Sub_val1{
		float X;
		float Y;
		float Z;
	}GYRO;
	
	struct Sub_val2{
		float X;
		float Y;
		float Z;
	}ACC;
	
	struct Sub_val3{
		float X;
		float Y;
		float Z;
	}MAGN;
	
	float TEMP;
}MPU_values;

uint8_t spiTxBuf[2] = {0xF0,0x00};
int _status = -1;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */
void run_moteurs(int id_moteur, int sense);
void stop_moteurs(int id_moteur);
void duty_moteurs(int id_moteur, int duty);
int check_parity(uint8_t val[2]);

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim){
	
	if(htim->Instance == TIM1){
		if(htim->Channel == HAL_TIM_ACTIVE_CHANNEL_1){
			if (values.is_First_Captured[0] == 0){
				values.capt1[0] = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_1);
				values.is_First_Captured[0] = 1;
			}
			else if (values.is_First_Captured[0]){
				values.capt2[0] = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_1);
				cmd.roll = values.capt2[0] - values.capt1[0];
				
				if (cmd.roll < 0){
					cmd.roll += 0xFFFF;
				}
				values.is_First_Captured[0] = 0;
			}
		}
		else if(htim->Channel == HAL_TIM_ACTIVE_CHANNEL_2){
			if (values.is_First_Captured[1] == 0){
				values.capt1[1] = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_2);
				values.is_First_Captured[1] = 1;
			}
			else if (values.is_First_Captured[1]){
				values.capt2[1] = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_2);
				cmd.pitch = values.capt2[1] - values.capt1[1];
				
				if (cmd.pitch < 0){
					cmd.pitch += 0xFFFF;
				}
				values.is_First_Captured[1] = 0;
			}
		}
		else if(htim->Channel == HAL_TIM_ACTIVE_CHANNEL_3){
			if (values.is_First_Captured[2] == 0){
				values.capt1[2] = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_3);
				values.is_First_Captured[2] = 1;
			}
			else if (values.is_First_Captured[2]){
				values.capt2[2] = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_3);
				cmd.throttle = values.capt2[2] - values.capt1[2];
				
				if (cmd.throttle < 0){
					cmd.throttle += 0xFFFF;
				}
				values.is_First_Captured[2] = 0;
			}		
		}
		else if(htim->Channel == HAL_TIM_ACTIVE_CHANNEL_4){
			if (values.is_First_Captured[3] == 0){
				values.capt1[3] = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_4);
				values.is_First_Captured[3] = 1;
			}
			else if (values.is_First_Captured[3]){
				values.capt2[3] = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_4);
				cmd.yaw = values.capt2[3] - values.capt1[3];
				
				if (cmd.yaw < 0){
					cmd.yaw += 0xFFFF;
				}
				values.is_First_Captured[3] = 0;
			}		
		}
	}
	else if(htim->Instance == TIM2){
		if(htim->Channel == HAL_TIM_ACTIVE_CHANNEL_1){
			if (values.is_First_Captured[4] == 0){
				values.capt1[4] = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_1);
				values.is_First_Captured[4] = 1;
			}
			else if (values.is_First_Captured[4]){
				values.capt2[4] = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_1);
				cmd.vrb = values.capt2[4] - values.capt1[4];
				
				if (cmd.vrb < 0){
					cmd.vrb += 0xFFFF;
				}
				values.is_First_Captured[4] = 0;
			}
		}
		else if(htim->Channel == HAL_TIM_ACTIVE_CHANNEL_2){
			if (values.is_First_Captured[5] == 0){
				values.capt1[5] = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_2);
				values.is_First_Captured[5] = 1;
			}
			else if (values.is_First_Captured[5]){
				values.capt2[5] = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_2);
				cmd.vra = values.capt2[5] - values.capt1[5];
				
				if (cmd.vra < 0){
					cmd.vra += 0xFFFF;
				}
				values.is_First_Captured[5] = 0;
			}
		}
	}
	
}




int check_parity(uint8_t val[2]){
	int parity = 1; //impaire
	int cpt_un = 0; //nombre de 1 dans le buffer
	uint8_t val_int = val[0];
	
	for(int i=0 ; i < 8 ; i++){
		if((val_int&0x01) == 0x01){// '1' trouvé
			cpt_un += 1;
		}
		val_int = val_int >> 1;
	}
	
	val_int = val[1];
	for(int i=0; i<8;i++){
		if((val_int&0x01) == 0x01){// '1' trouvé
			cpt_un += 1;
		}
		val_int = val_int>>1;
	}
	
	if(cpt_un%2 == 0){//Somme des '1' paire ?
		parity=0;
	}
	
	return parity; 

}


void run_moteurs(int id_moteur, int sense){
	spiTxBuf[0]=0xF0;
	spiTxBuf[1]=0x00;
	
	switch(id_moteur){
		case 0: //Moteur Avant gauche
			if(sense == 0)//Sens horaire
				spiTxBuf[0] |= 0x01;
			else if(sense == 1)//Sens anti-horaire
				spiTxBuf[0] |= 0x02;
			break;
		case 1: //Moteur Avant droit
			if(sense == 0)//Sens horaire
				spiTxBuf[0] |= 0x05;
			else if(sense == 1)//Sens anti-horaire
				spiTxBuf[0] |= 0x06;
			break;
		case 2: //Moteur Arrière gauche
			if(sense == 0)//Sens horaire
				spiTxBuf[0] |= 0x09;
			else if(sense == 1)//Sens anti-horaire
				spiTxBuf[0] |= 0x0A;
			break;	
		case 3: //Moteur Arrière droit
			if(sense == 0)//Sens horaire
				spiTxBuf[0] |= 0x0D;
			else if(sense == 1)//Sens anti-horaire
				spiTxBuf[0] |= 0x0E;
			break;	
		default:
			break;
	}
	
	spiTxBuf[1] |= 0x02;
	
	if(check_parity(spiTxBuf))
		spiTxBuf[1] |= 0x01; 
		
	HAL_GPIO_WritePin(SPI1_SSEL_GPIO_Port, SPI1_SSEL_Pin, GPIO_PIN_RESET); //Activate SLAVE
	HAL_SPI_Transmit(&hspi1,&spiTxBuf[0],2,HAL_MAX_DELAY); //Début transmission
	HAL_GPIO_WritePin(SPI1_SSEL_GPIO_Port, SPI1_SSEL_Pin, GPIO_PIN_SET); //Disable communication
}



void duty_moteurs(int id_moteur, int duty){
	spiTxBuf[0]=0xF0;
	spiTxBuf[1]=0x00;
	
	switch(id_moteur){
		case 0: //Moteur Avant gauche
			spiTxBuf[0] |= 0x03;
			break;
		case 1: //Moteur Avant droit
			spiTxBuf[0] |= 0x07;
			break;
		case 2: //Moteur Arrière gauche
			spiTxBuf[0] |= 0x0B;
			break;	
		case 3: //Moteur Arrière droit
			spiTxBuf[0] |= 0x0F;
			break;	
		default:
			break;
	}
	spiTxBuf[1] = duty << 1;
	
	if(check_parity(spiTxBuf))
		spiTxBuf[1] |= 0x01; 
	
	HAL_GPIO_WritePin(SPI1_SSEL_GPIO_Port, SPI1_SSEL_Pin, GPIO_PIN_RESET); //Activate SLAVE
	HAL_SPI_Transmit(&hspi1,&spiTxBuf[0],2,HAL_MAX_DELAY); //Début transmission
	HAL_GPIO_WritePin(SPI1_SSEL_GPIO_Port, SPI1_SSEL_Pin, GPIO_PIN_SET); //Disable communication
}




void stop_moteurs(int id_moteur){
	spiTxBuf[0]=0xF0;
	spiTxBuf[1]=0x00;
	
	switch(id_moteur){
		case 0: //Moteur Avant gauche
			spiTxBuf[0] |= 0x01;
			break;
		case 1: //Moteur Avant droit
			spiTxBuf[0] |= 0x05;
			break;
		case 2: //Moteur Arrière gauche
			spiTxBuf[0] |= 0x09;
			break;	
		case 3: //Moteur Arrière droit
			spiTxBuf[0] |= 0x0D;
			break;	
		default:
			break;
	}
	spiTxBuf[1] |= 0x00;
	
	if(check_parity(spiTxBuf))
		spiTxBuf[1] |= 0x01; 
	
	
	HAL_GPIO_WritePin(SPI1_SSEL_GPIO_Port, SPI1_SSEL_Pin, GPIO_PIN_RESET); //Activate SLAVE
	HAL_SPI_Transmit(&hspi1,&spiTxBuf[0],2,HAL_MAX_DELAY); //Début transmission
	HAL_GPIO_WritePin(SPI1_SSEL_GPIO_Port, SPI1_SSEL_Pin, GPIO_PIN_SET); //Disable communication
}








/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */
  

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_TIM1_Init();
  MX_SPI1_Init();
  MX_TIM2_Init();
  MX_I2C1_Init();
  /* USER CODE BEGIN 2 */
	HAL_TIM_IC_Start_IT(&htim1,TIM_CHANNEL_1);
	HAL_TIM_IC_Start_IT(&htim1,TIM_CHANNEL_2);
	HAL_TIM_IC_Start_IT(&htim1,TIM_CHANNEL_3);
	HAL_TIM_IC_Start_IT(&htim1,TIM_CHANNEL_4);
	HAL_TIM_IC_Start_IT(&htim2,TIM_CHANNEL_1);
	HAL_TIM_IC_Start_IT(&htim2,TIM_CHANNEL_2);
	HAL_GPIO_WritePin(SPI1_SSEL_GPIO_Port, SPI1_SSEL_Pin, GPIO_PIN_SET); //Initialiser la communication SPI

/* 
* id_moteurs :
* 0 ---> Moteur Avant gauche
* 1 ---> Moteur Avant droit
* 2 ---> Moteur Arrière gauche
* 3 ---> Moteur Arrière droit

* sense :
* 0 ---> Horaire
* 1 ---> Anti-horaire

* duty : [0 , 100]
*/
	//run_moteurs(0,0);
	//duty_moteurs(2,50);
	//stop_moteurs(0);
	
	_status = setup_MPU9250();
	if( _status < 0){ //Echec d'initialisation du MPU
		while(1);
	}
	
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
		readSensor(); //MPU9250

		MPU_values.GYRO.X = getGyroX_rads();
		MPU_values.GYRO.Y = getGyroY_rads();
		MPU_values.GYRO.Z = getGyroZ_rads();
		MPU_values.ACC.X = getAccelX_mss();
		MPU_values.ACC.Y  = getAccelY_mss();
		MPU_values.ACC.Z = getAccelZ_mss();
		MPU_values.MAGN.X = getMagX_uT();
		MPU_values.MAGN.Y = getMagY_uT();
		MPU_values.MAGN.Z = getMagZ_uT();
		MPU_values.TEMP = getTemperature_C();
				
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL16;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_I2C1|RCC_PERIPHCLK_TIM1;
  PeriphClkInit.I2c1ClockSelection = RCC_I2C1CLKSOURCE_HSI;
  PeriphClkInit.Tim1ClockSelection = RCC_TIM1CLK_HCLK;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(char *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
