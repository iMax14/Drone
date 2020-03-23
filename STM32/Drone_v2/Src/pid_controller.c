#include "pid_controller.h"
#include "mpu6050.h"
#include "motor_control.h"

uint8_t start = 0; //FSM
double pid_error_temp;
double pid_i_mem_roll, pid_roll_setpoint, gyro_roll_input, pid_output_roll, pid_last_roll_d_error;
double pid_i_mem_pitch, pid_pitch_setpoint, gyro_pitch_input, pid_output_pitch, pid_last_pitch_d_error;
double pid_i_mem_yaw, pid_yaw_setpoint, gyro_yaw_input, pid_output_yaw, pid_last_yaw_d_error;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//PID gain and limit settings
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
float pid_p_gain_roll = 1.3;               //Gain setting for the pitch and roll P-controller (default = 1.3).
float pid_i_gain_roll = 0.04;              //Gain setting for the pitch and roll I-controller (default = 0.04).
float pid_d_gain_roll = 18.0;              //Gain setting for the pitch and roll D-controller (default = 18.0).
int pid_max_roll = 400;                    //Maximum output of the PID-controller (+/-).
float pid_p_gain_pitch = 1.3;  //Gain setting for the pitch P-controller.
float pid_i_gain_pitch = 0.04;  //Gain setting for the pitch I-controller.
float pid_d_gain_pitch = 18.0;  //Gain setting for the pitch D-controller.
int pid_max_pitch = 400;          //Maximum output of the PID-controller (+/-).

float pid_p_gain_yaw = 4.0;                //Gain setting for the pitch P-controller (default = 4.0).
float pid_i_gain_yaw = 0.02;               //Gain setting for the pitch I-controller (default = 0.02).
float pid_d_gain_yaw = 0.0;                //Gain setting for the pitch D-controller (default = 0.0).
int pid_max_yaw = 400;                     //Maximum output of the PID-controller (+/-).

int16_t throttle;
int16_t esc_1 = 1000;
int16_t esc_2 = 1000;
int16_t esc_3 = 1000;
int16_t esc_4 = 1000;

extern TM_MPU6050_t MPU6050;
extern int _status;

extern struct Remote{
	int32_t roll;
	int32_t pitch;
	int32_t throttle;
	int32_t yaw;
}cmd;

void init_pid(void){
	
////////////////STEP 1//////////////////////
		if(cmd.throttle < 1050 && cmd.yaw < 1050) start = 1;//For starting the motors: throttle low and yaw left

	
////////////////STEP 2//////////////////////
		if (start == 1 && cmd.throttle < 1050 && cmd.yaw > 1450){//When yaw stick is back in the center position start the motors
			start = 2;
			MPU6050.angle_pitch = MPU6050.angle_pitch_output;                               //Set the gyro pitch angle equal to the accelerometer pitch angle when the quadcopter is started.
			MPU6050.angle_roll = MPU6050.angle_roll_output;                                 //Set the gyro roll angle equal to the accelerometer roll angle when the quadcopter is started.
			
			//Reset the PID controllers for a bumpless start.
			pid_i_mem_roll = 0;
			pid_last_roll_d_error = 0;
			pid_i_mem_pitch = 0;
			pid_last_pitch_d_error = 0;
			pid_i_mem_yaw = 0;
			pid_last_yaw_d_error = 0;
		}
		
		if (start == 2 && cmd.throttle < 1050 && cmd.yaw  > 1950) start = 0;//Stopping the motors: throttle low and yaw right.

		//The PID set point in degrees per second is determined by the roll receiver input.
		//In the case of deviding by 3 the max roll rate is aprox 164 degrees per second ( (500-8)/3 = 164d/s ).
		pid_roll_setpoint = 0;
		//We need a little dead band of 16us for better results.
		if (cmd.roll > 1508)pid_roll_setpoint = cmd.roll - 1508;
		else if (cmd.roll < 1492)pid_roll_setpoint = cmd.roll - 1492;

		pid_roll_setpoint -= MPU6050.roll_level_adjust;                                  //Subtract the angle correction from the standardized receiver roll input value.
		pid_roll_setpoint /= 3.0;                                                        //Divide the setpoint for the PID roll controller by 3 to get angles in degrees.


		//The PID set point in degrees per second is determined by the pitch receiver input.
		//In the case of deviding by 3 the max pitch rate is aprox 164 degrees per second ( (500-8)/3 = 164d/s ).
		pid_pitch_setpoint = 0;
		//We need a little dead band of 16us for better results.
		if (cmd.pitch > 1508)pid_pitch_setpoint = cmd.pitch - 1508;
		else if (cmd.pitch < 1492)pid_pitch_setpoint = cmd.pitch - 1492;

		pid_pitch_setpoint -= MPU6050.pitch_level_adjust;                                //Subtract the angle correction from the standardized receiver pitch input value.
		pid_pitch_setpoint /= 3.0;                                        
		

		//The PID set point in degrees per second is determined by the yaw receiver input.
		//In the case of deviding by 3 the max yaw rate is aprox 164 degrees per second ( (500-8)/3 = 164d/s ).
		pid_yaw_setpoint = 0;
		//We need a little dead band of 16us for better results.
		if (cmd.throttle > 1050) { //Do not yaw when turning off the motors.
			if (cmd.yaw > 1508)pid_yaw_setpoint = (cmd.yaw - 1508) / 3.0;
			else if (cmd.yaw < 1492)pid_yaw_setpoint = (cmd.yaw - 1492) / 3.0;
		}
}


void calculate_pid(void){
  //Roll calculations
  pid_error_temp = gyro_roll_input - pid_roll_setpoint;
  pid_i_mem_roll += pid_i_gain_roll * pid_error_temp;
  if(pid_i_mem_roll > pid_max_roll)pid_i_mem_roll = pid_max_roll;
  else if(pid_i_mem_roll < pid_max_roll * -1)pid_i_mem_roll = pid_max_roll * -1;

  pid_output_roll = pid_p_gain_roll * pid_error_temp + pid_i_mem_roll + pid_d_gain_roll * (pid_error_temp - pid_last_roll_d_error);
  if(pid_output_roll > pid_max_roll)pid_output_roll = pid_max_roll;
  else if(pid_output_roll < pid_max_roll * -1)pid_output_roll = pid_max_roll * -1;

  pid_last_roll_d_error = pid_error_temp;

  //Pitch calculations
  pid_error_temp = gyro_pitch_input - pid_pitch_setpoint;
  pid_i_mem_pitch += pid_i_gain_pitch * pid_error_temp;
  if(pid_i_mem_pitch > pid_max_pitch)pid_i_mem_pitch = pid_max_pitch;
  else if(pid_i_mem_pitch < pid_max_pitch * -1)pid_i_mem_pitch = pid_max_pitch * -1;

  pid_output_pitch = pid_p_gain_pitch * pid_error_temp + pid_i_mem_pitch + pid_d_gain_pitch * (pid_error_temp - pid_last_pitch_d_error);
  if(pid_output_pitch > pid_max_pitch)pid_output_pitch = pid_max_pitch;
  else if(pid_output_pitch < pid_max_pitch * -1)pid_output_pitch = pid_max_pitch * -1;

  pid_last_pitch_d_error = pid_error_temp;

  //Yaw calculations
  pid_error_temp = gyro_yaw_input - pid_yaw_setpoint;
  pid_i_mem_yaw += pid_i_gain_yaw * pid_error_temp;
  if(pid_i_mem_yaw > pid_max_yaw)pid_i_mem_yaw = pid_max_yaw;
  else if(pid_i_mem_yaw < pid_max_yaw * -1)pid_i_mem_yaw = pid_max_yaw * -1;

  pid_output_yaw = pid_p_gain_yaw * pid_error_temp + pid_i_mem_yaw + pid_d_gain_yaw * (pid_error_temp - pid_last_yaw_d_error);
  if(pid_output_yaw > pid_max_yaw)pid_output_yaw = pid_max_yaw;
  else if(pid_output_yaw < pid_max_yaw * -1)pid_output_yaw = pid_max_yaw * -1;

  pid_last_yaw_d_error = pid_error_temp;
}



void cmd_motors(void){
		throttle = cmd.throttle;                                                         //We need the throttle signal as a base signal.
		if (start == 2) {                                                                //The motors are started.
				if (throttle > 1800) throttle = 1800;                                          //We need some room to keep full control at full throttle.
				esc_1 = throttle - pid_output_pitch + pid_output_roll - pid_output_yaw;        //Calculate the pulse for esc 1 (front-right - CCW).
				esc_2 = throttle + pid_output_pitch + pid_output_roll + pid_output_yaw;        //Calculate the pulse for esc 2 (rear-right - CW).
				esc_3 = throttle + pid_output_pitch - pid_output_roll - pid_output_yaw;        //Calculate the pulse for esc 3 (rear-left - CCW).
				esc_4 = throttle - pid_output_pitch - pid_output_roll + pid_output_yaw;        //Calculate the pulse for esc 4 (front-left - CW).

				if (esc_1 < 1100) esc_1 = 1100;                                                //Keep the motors running.
				if (esc_2 < 1100) esc_2 = 1100;                                                //Keep the motors running.
				if (esc_3 < 1100) esc_3 = 1100;                                                //Keep the motors running.
				if (esc_4 < 1100) esc_4 = 1100;                                                //Keep the motors running.

				if (esc_1 > 2000)esc_1 = 2000;                                                 //Limit the esc-1 pulse to 2000us.
				if (esc_2 > 2000)esc_2 = 2000;                                                 //Limit the esc-2 pulse to 2000us.
				if (esc_3 > 2000)esc_3 = 2000;                                                 //Limit the esc-3 pulse to 2000us.
				if (esc_4 > 2000)esc_4 = 2000;                                                 //Limit the esc-4 pulse to 2000us.
		}
		else {
			esc_1 = 1000;                                                                  //If start is not 2 keep a 1000us pulse for ess-1.
			esc_2 = 1000;                                                                  //If start is not 2 keep a 1000us pulse for ess-2.
			esc_3 = 1000;                                                                  //If start is not 2 keep a 1000us pulse for ess-3.
			esc_4 = 1000;                                                                  //If start is not 2 keep a 1000us pulse for ess-4.
		}
				
		if(duty_moteurs(0,(esc_4 - 1000)/10) != FPGA_Result_Ok){ //Moteur AV gauche
			_status = 4; //FPGA non détectée
			Error_Handler();
		}
		if(duty_moteurs(1,(esc_3 - 1000)/10) != FPGA_Result_Ok){ //Moteur AR gauche
			_status = 4; //FPGA non détectée
			Error_Handler();
		}
		if(duty_moteurs(2,(esc_1 - 1000)/10) != FPGA_Result_Ok){ //Moteur AV Droit
			_status = 4; //FPGA non détectée
			Error_Handler();
		}
		if(duty_moteurs(3,(esc_2 - 1000)/10) != FPGA_Result_Ok){ //Moteur AR droit
			_status = 4; //FPGA non détectée
			Error_Handler();
		}

}

