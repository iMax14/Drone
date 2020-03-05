#include "motor_control.h"

extern SPI_HandleTypeDef hspi1;
uint8_t spiTxBuf[2] = {0xF0,0x00};



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
		
//	__HAL_SPI_ENABLE(&hspi1);
//	HAL_Delay(1);

	HAL_GPIO_WritePin(SPI1_SSEL_GPIO_Port, SPI1_SSEL_Pin, GPIO_PIN_RESET); //Activate SLAVE
	HAL_SPI_Transmit(&hspi1,&spiTxBuf[0],2,HAL_MAX_DELAY); //Début transmission
	HAL_GPIO_WritePin(SPI1_SSEL_GPIO_Port, SPI1_SSEL_Pin, GPIO_PIN_SET); //Disable communication
	
	__HAL_SPI_DISABLE(&hspi1);
	HAL_Delay(2);

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



