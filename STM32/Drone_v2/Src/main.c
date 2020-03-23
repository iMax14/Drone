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

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "mpu6050.h"
#include "motor_control.h"
#include "pid_controller.h"

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
I2C_HandleTypeDef hi2c1;

SPI_HandleTypeDef hspi1;

TIM_HandleTypeDef htim1;
TIM_HandleTypeDef htim2;

UART_HandleTypeDef huart2;

/* USER CODE BEGIN PV */
int _status = 2; //Par défaut : FlySky télécommande non détectée
TM_MPU6050_t MPU6050;
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
}cmd;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_I2C1_Init(void);
static void MX_SPI1_Init(void);
static void MX_TIM1_Init(void);
static void MX_TIM2_Init(void);
static void MX_USART2_UART_Init(void);
/* USER CODE BEGIN PFP */
#ifdef __GNUC__
	#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
	#define PUTCHAR_PROTOTYPE int fputc(int ch,FILE *f)
#endif


/* USER CODE END PFP */
PUTCHAR_PROTOTYPE{

	HAL_UART_Transmit(&huart2,(uint8_t *) &ch,1,0xFFFF);

	return ch;

}
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
				cmd.throttle = values.capt2[0] - values.capt1[0];
				
				if (cmd.throttle < 0){
					cmd.throttle += 0xFFFF;
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
				cmd.roll = values.capt2[1] - values.capt1[1];
				
				if (cmd.roll < 0){
					cmd.roll += 0xFFFF;
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
				cmd.pitch = values.capt2[2] - values.capt1[2];
				
				if (cmd.pitch < 0){
					cmd.pitch += 0xFFFF;
				}
				values.is_First_Captured[2] = 0;
			}		
		}
	}
	else if(htim->Instance == TIM2){
		if(htim->Channel == HAL_TIM_ACTIVE_CHANNEL_2){
			if (values.is_First_Captured[3] == 0){
				values.capt1[3] = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_2);
				values.is_First_Captured[3] = 1;
			}
			else if (values.is_First_Captured[3]){
				values.capt2[3] = HAL_TIM_ReadCapturedValue(htim, TIM_CHANNEL_2);
				cmd.yaw = values.capt2[3] - values.capt1[3];
				
				if (cmd.yaw < 0){
					cmd.yaw += 0xFFFF;
				}
				values.is_First_Captured[3] = 0;
			}		
		}
	}
		
	
}

void toggle_led(int id){

	switch (id){
		case 0://LED rouge
			HAL_GPIO_TogglePin(GPIOB, LED_rouge_Pin);
		
			HAL_GPIO_WritePin(GPIOB, LED_jaune_Pin, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(GPIOB, LED_verte_Pin, GPIO_PIN_RESET);
			break;
  	case 1://LED jaune
			HAL_GPIO_WritePin(GPIOB, LED_jaune_Pin,GPIO_PIN_SET); //Initialisation du Drone
		
			HAL_GPIO_WritePin(GPIOB, LED_rouge_Pin, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(GPIOB, LED_verte_Pin, GPIO_PIN_RESET);
			break;
		case 2://LED verte
			HAL_GPIO_WritePin(GPIOB, LED_verte_Pin, GPIO_PIN_SET); //Prêt au décolage
		
			HAL_GPIO_WritePin(GPIOB, LED_jaune_Pin, GPIO_PIN_RESET);
			HAL_GPIO_WritePin(GPIOB, LED_rouge_Pin, GPIO_PIN_RESET);
			break;
		default:
			break;
	}


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
  MX_I2C1_Init();
  MX_SPI1_Init();
  MX_TIM1_Init();
  MX_TIM2_Init();
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */
	
	toggle_led(1); //Set Led jaune pendant l'initialisation

	//Setup the registers of the MPU-6050 (500dfs / +/-8g) and start the gyro
	if(MPU6050_Init(&MPU6050, TM_MPU6050_Device_0) != TM_MPU6050_Result_Ok){
		_status = 1; //MPU-6050 non détectée
		Error_Handler();
	}
	//Calibration of the MPU-6050
	if(MPU6050_Calibrate(&MPU6050, TM_MPU6050_Device_0) != TM_MPU6050_Result_Ok){
		_status = 1; //MPU-6050 non détectée
		Error_Handler();
	}

	//Activate Remote control captures
	HAL_TIM_IC_Start_IT(&htim1,TIM_CHANNEL_1); //PA8  --> CH3 receiver [throttle]
	HAL_TIM_IC_Start_IT(&htim1,TIM_CHANNEL_2); //PA9  --> CH1 receiver [roll]
	HAL_TIM_IC_Start_IT(&htim1,TIM_CHANNEL_3); //PA10 --> CH2 receiver [pitch]
	HAL_TIM_IC_Start_IT(&htim2,TIM_CHANNEL_2); //PA1  --> CH4 receiver [yaw]
	
	HAL_Delay(2000); //Wait until the receiver is active

  if(cmd.pitch < 990 || cmd.roll < 990 || cmd.throttle < 990 || cmd.yaw < 990)  {
		_status = 2; //FlySky télécommande non détectée
		Error_Handler();
  }
  if(cmd.pitch > 1990 || cmd.roll > 1990 || cmd.throttle > 1990 || cmd.yaw > 1990)  {
		_status = 2; //FlySky télécommande non détectée
		Error_Handler();
  }
	
	//Wait until the throttle is set to the lower position.
	if(cmd.throttle < 990 || cmd.throttle > 1050)  {
		_status = 3; //Throttle n'est pas dans la position la plus basse
		Error_Handler();
	}

	//Initialize SPI communication
	HAL_GPIO_WritePin(SPI1_SSEL_GPIO_Port, SPI1_SSEL_Pin, GPIO_PIN_SET);

	_status = 0; //L'initialisation des périphériques a été excécutée

	toggle_led(2); //Set Led verte à la fin de l'initialisation
	
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
		//Read and Convert all the data from the MPU6050
		if(MPU6050_ReadConvert_Pitch_Roll(&MPU6050, TM_MPU6050_Device_0) != TM_MPU6050_Result_Ok){
			_status = 1; //MPU-6050 non détectée
			run_moteurs(5); //Stop ALL motors
			Error_Handler();
		}
		
// Commandes moteurs en Boucle ouverte
//		check_motor_vibrations(4); 

// Commandes moteurs en Boucle fermée (PID)
		init_pid();
		calculate_pid();//PID inputs are known. So we can calculate the pid output.
		cmd_motors();

		
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

/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.Timing = 0x0000020B;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.OwnAddress2Masks = I2C_OA2_NOMASK;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Analogue filter 
  */
  if (HAL_I2CEx_ConfigAnalogFilter(&hi2c1, I2C_ANALOGFILTER_ENABLE) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Digital filter 
  */
  if (HAL_I2CEx_ConfigDigitalFilter(&hi2c1, 0) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

}

/**
  * @brief SPI1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI1_Init(void)
{

  /* USER CODE BEGIN SPI1_Init 0 */

  /* USER CODE END SPI1_Init 0 */

  /* USER CODE BEGIN SPI1_Init 1 */

  /* USER CODE END SPI1_Init 1 */
  /* SPI1 parameter configuration*/
  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi1.Init.CLKPhase = SPI_PHASE_2EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_256;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 7;
  hspi1.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
  hspi1.Init.NSSPMode = SPI_NSS_PULSE_DISABLE;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI1_Init 2 */

  /* USER CODE END SPI1_Init 2 */

}

/**
  * @brief TIM1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM1_Init(void)
{

  /* USER CODE BEGIN TIM1_Init 0 */

  /* USER CODE END TIM1_Init 0 */

  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_IC_InitTypeDef sConfigIC = {0};

  /* USER CODE BEGIN TIM1_Init 1 */

  /* USER CODE END TIM1_Init 1 */
  htim1.Instance = TIM1;
  htim1.Init.Prescaler = 63;
  htim1.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim1.Init.Period = 0xFFFF;
  htim1.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim1.Init.RepetitionCounter = 0;
  htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_IC_Init(&htim1) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterOutputTrigger2 = TIM_TRGO2_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigIC.ICPolarity = TIM_INPUTCHANNELPOLARITY_BOTHEDGE;
  sConfigIC.ICSelection = TIM_ICSELECTION_DIRECTTI;
  sConfigIC.ICPrescaler = TIM_ICPSC_DIV1;
  sConfigIC.ICFilter = 0;
  if (HAL_TIM_IC_ConfigChannel(&htim1, &sConfigIC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_IC_ConfigChannel(&htim1, &sConfigIC, TIM_CHANNEL_2) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_IC_ConfigChannel(&htim1, &sConfigIC, TIM_CHANNEL_3) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM1_Init 2 */
  /* USER CODE END TIM1_Init 2 */

}

/**
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_IC_InitTypeDef sConfigIC = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 63;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 0xFFFF;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_IC_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigIC.ICPolarity = TIM_INPUTCHANNELPOLARITY_BOTHEDGE;
  sConfigIC.ICSelection = TIM_ICSELECTION_DIRECTTI;
  sConfigIC.ICPrescaler = TIM_ICPSC_DIV1;
  sConfigIC.ICFilter = 0;
  if (HAL_TIM_IC_ConfigChannel(&htim2, &sConfigIC, TIM_CHANNEL_2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */

}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 9600;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  huart2.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart2.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(SPI1_SSEL_GPIO_Port, SPI1_SSEL_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, LED_verte_Pin|LED_jaune_Pin|LED_rouge_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : SPI1_SSEL_Pin */
  GPIO_InitStruct.Pin = SPI1_SSEL_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(SPI1_SSEL_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : LED_verte_Pin LED_jaune_Pin LED_rouge_Pin */
  GPIO_InitStruct.Pin = LED_verte_Pin|LED_jaune_Pin|LED_rouge_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

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
	while(1){
/* Voici les cas d'erreurs pour la LED rouge 
*	Valeur de la variable "_status"
* 	0 : pas d'erreurs détectée
* 	1 : MPU-6050 non détecté
*		2 : FlySky télécommande non détectée
*		3 : Throttle n'est pas dans la position la plus basse
*		4 : FPGA non détecté 
*/		
		toggle_led(0);
		HAL_Delay(_status*250);
	
	
	}

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
