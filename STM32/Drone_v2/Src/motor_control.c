#include "motor_control.h"

extern SPI_HandleTypeDef hspi1;
uint8_t spiTxBuf[2] = {0xF0,0x00};

/* 
* id_moteurs :
* 0 ---> Moteur Avant gauche
* 1 ---> Moteur Avant droit
* 2 ---> Moteur Arrière gauche
* 3 ---> Moteur Arrière droit

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



