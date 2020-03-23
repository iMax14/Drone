#include "motor_control.h"
#include "mpu6050.h"

uint8_t spiTxBuf[2] = {0xF0,0x00};
uint8_t vibration_counter = 0;
int32_t  vibration_array[20],avarage_vibration_level, vibration_total_result;
extern SPI_HandleTypeDef hspi1;
extern TM_MPU6050_t MPU6050;
extern struct Remote{
	int32_t roll;
	int32_t pitch;
	int32_t throttle;
	int32_t yaw;
}cmd;
extern int _status;

/*
 * id_moteurs :
	 * 0 : AV_gauche
	 * 1 : AR gauche
	 * 2 : AV droit
	 * 3 : AR droit
	 * 4 : run ALL motors
	 * 5 : stop ALL motors

 * duty : [0 , 100]
*/


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


FPGA_Result_t duty_moteurs(int id_moteur, int duty){
	spiTxBuf[0]=0xF0;
	spiTxBuf[1]=0x00;
	
	switch(id_moteur){
		case 0: //Moteur Avant gauche
			spiTxBuf[0] |= 0x02;
			break;
		case 1: //Moteur Avant droit
			spiTxBuf[0] |= 0x06;
			break;
		case 2: //Moteur Arrière gauche
			spiTxBuf[0] |= 0x0A;
			break;	
		case 3: //Moteur Arrière droit
			spiTxBuf[0] |= 0x0E;
			break;	
		default:
			break;
	}
	spiTxBuf[1] = duty << 1;
	
	if(check_parity(spiTxBuf))
		spiTxBuf[1] |= 0x01; 
	
	HAL_GPIO_WritePin(SPI1_SSEL_GPIO_Port, SPI1_SSEL_Pin, GPIO_PIN_RESET); //Activate SLAVE
	if (HAL_SPI_Transmit(&hspi1,&spiTxBuf[0],2,HAL_MAX_DELAY) != HAL_OK) {//Send SPI packet
		/* Return error */
		return FPGA_Result_Error;
	}
	HAL_GPIO_WritePin(SPI1_SSEL_GPIO_Port, SPI1_SSEL_Pin, GPIO_PIN_SET); //Disable communication
		
	/* Return OK */
	return FPGA_Result_Ok;
}

void run_moteurs(int id_motor){
//  Commandes moteurs en Boucle ouverte
	int duty_1,duty_2,duty_3,duty_4;
	
	switch(id_motor){
		case 0: //ESC1 [MOTOR AV GAUCHE]
			duty_1 = (cmd.throttle - 1000)/10; // Convert [1000-2000] (us) to [0-99] (%)
			duty_2 = 0;
			duty_3 = 0;
			duty_4 = 0;
			break;
		case 1: //ESC2 [MOTOR AR GAUCHE]
			duty_1 = 0;
			duty_2 = (cmd.throttle - 1000)/10; // Convert [1000-2000] (us) to [0-99] (%)
			duty_3 = 0;
			duty_4 = 0;
			break;		
		case 2: //ESC3 [MOTOR AV DROIT]
			duty_1 = 0;
			duty_2 = 0;
			duty_3 = (cmd.throttle - 1000)/10; // Convert [1000-2000] (us) to [0-99] (%)
			duty_4 = 0;
			break;
		case 3: //ESC4 [MOTOR AR DROIT]
			duty_1 = 0;
			duty_2 = 0;
			duty_3 = 0;
			duty_4 = (cmd.throttle - 1000)/10; // Convert [1000-2000] (us) to [0-99] (%)
			break;
		case 4: //ALL ESC [ALL MOTORS]
			duty_1 = (cmd.throttle - 1000)/10; // Convert [1000-2000] (us) to [0-99] (%)
			duty_2 = (cmd.throttle - 1000)/10; // Convert [1000-2000] (us) to [0-99] (%)
			duty_3 = (cmd.throttle - 1000)/10; // Convert [1000-2000] (us) to [0-99] (%)
			duty_4 = (cmd.throttle - 1000)/10; // Convert [1000-2000] (us) to [0-99] (%)
			break;
		case 5: //STOP
			duty_1 = 0;
			duty_2 = 0;
			duty_3 = 0;
			duty_4 = 0;
			break;
		default:
			duty_1 = 0;
			duty_2 = 0;
			duty_3 = 0;
			duty_4 = 0;
			break;
	}

	if(duty_moteurs(0,duty_1) != FPGA_Result_Ok){ //Moteur AV gauche
		_status = 4; //FPGA non détectée
		Error_Handler();
	}
	if(duty_moteurs(1,duty_2) != FPGA_Result_Ok){ //Moteur AR gauche
		_status = 4; //FPGA non détectée
		Error_Handler();
	}
	if(duty_moteurs(2,duty_3) != FPGA_Result_Ok){ //Moteur AV Droit
		_status = 4; //FPGA non détectée
		Error_Handler();
	}
	if(duty_moteurs(3,duty_4) != FPGA_Result_Ok){ //Moteur AR droit
		_status = 4; //FPGA non détectée
		Error_Handler();
	}	

}






void check_motor_vibrations(int id_motor) {

	//Calculate the total accelerometer vector.
	vibration_array[0] = sqrt((MPU6050.Accelerometer_X*MPU6050.Accelerometer_X) + (MPU6050.Accelerometer_Y*MPU6050.Accelerometer_Y) + (MPU6050.Accelerometer_Z*MPU6050.Accelerometer_Z));

	for (uint8_t array_counter = 16; array_counter > 0; array_counter--) {                   //Do this loop 16 times to create an array of accelrometer vectors.
		vibration_array[array_counter] = vibration_array[array_counter - 1];           //Shift every variable one position up in the array.
		avarage_vibration_level += vibration_array[array_counter];                     //Add the array value to the acc_av_vector variable.
	}
	avarage_vibration_level /= 17;                                                   //Divide the acc_av_vector by 17 to get the avarage total accelerometer vector.

	if (vibration_counter < 20) {                                                    //If the vibration_counter is less than 20 do this.
		vibration_counter ++;                                                          //Increment the vibration_counter variable.
		vibration_total_result += abs(vibration_array[0] - avarage_vibration_level);   //Add the absolute difference between the avarage vector and current vector to the vibration_total_result variable.
	}
	else {
		vibration_counter = 0;                                                         //If the vibration_counter is equal or larger than 20 do this.
		printf("Vibrations = %d\n\r",vibration_total_result/50);	
		vibration_total_result = 0;                                                    //Reset the vibration_total_result variable.
	}

	HAL_Delay(10);
	run_moteurs(id_motor); //Set the ESC output pulse equal to the throttle input.

}



