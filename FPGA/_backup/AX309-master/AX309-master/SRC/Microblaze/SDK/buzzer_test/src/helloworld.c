

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xgpio.h"

/************************** Variable Defintions ******************************/
XGpio Gpio_buzzer;
XGpio Gpio_keys;

int main()
{
	int Status;
	 u32 DataRead;
	 u32 Delay;

    init_platform();

	 Status = XGpio_Initialize(&Gpio_buzzer, XPAR_BUZZER_1B_DEVICE_ID);
	 if (Status != XST_SUCCESS) {
		  return XST_FAILURE;
	 }

	 XGpio_SetDataDirection(&Gpio_buzzer, 1, 0x0);         //set Gpio_buzzer is output

	 Status = XGpio_Initialize(&Gpio_keys, XPAR_KEY_4B_DEVICE_ID);
	 if (Status != XST_SUCCESS) {
		  return XST_FAILURE;
	 }
	 XGpio_SetDataDirection(&Gpio_keys, 1, 0xFFFFFFFF);    //set Gpio_keys is input


	 while(1)
	  {
		 DataRead = XGpio_DiscreteRead(&Gpio_keys, 1);

		 if((DataRead & 0x01)!=0x01){                      //if key1 is pushed
			for (Delay = 0; Delay < 2000; Delay++);
			DataRead = XGpio_DiscreteRead(&Gpio_keys, 1);  //read again
		 	if((DataRead & 0x01)!=0x01)
		 	{
	 	 	      XGpio_DiscreteWrite(&Gpio_buzzer, 1, 0x00);    //buzzer is on
		 	}
		 }
		 else{                                             //if key is not pushed
				for (Delay = 0; Delay < 2000; Delay++);
				DataRead = XGpio_DiscreteRead(&Gpio_keys, 1);  //read again
			 	if((DataRead & 0x01)==0x01)
			 	{
		 	 	      XGpio_DiscreteWrite(&Gpio_buzzer, 1, 0x01);   //buzzer is off
			 	}
		 }
	  }



    return 0;
}
