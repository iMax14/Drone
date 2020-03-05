#include "main.h"


void run_moteurs(int id_moteur, int sense);
void stop_moteurs(int id_moteur);
void duty_moteurs(int id_moteur, int duty);
int check_parity(uint8_t val[2]);
