#include "main.h"

/**
 * @brief  MPU6050 result enumeration	
 */
typedef enum _FPGA_Result_t {
	FPGA_Result_Ok = 0x00,          /*!< Everything OK */
	FPGA_Result_Error              /*!< Unknown error */
} FPGA_Result_t;


FPGA_Result_t duty_moteurs(int id_moteur, int duty);
int check_parity(uint8_t val[2]);
