# Projet de drône

## Le matériel utilisé est le suivant :

  - Un microcontrolleur STM32F303 pour la partie récupération des données capteurs (MPU-6050 + télécommande FlySky FS-R6B). De plus ce microcontrolleur sera chargé de l'asservissement du drone.
  - Un FPGA Spartan6 AX309 pour commander les 4 moteurs Brushless A2212/10T 1400KV via des ESC-30A Readytosky
  
De plus, les protocoles de communication mis en oeuvre sont les suivants :
  - I2C entre la STM32 et le MPU
  - SPI entre la STM32 et le FPGA
  - RF 2.4GHz entre la télécommande et la STM32

## Les outils de développement sont les suivants :
  - ISE Design Suite 14.7
  - Keil uVision5
  - STM32CubeMX
 
 
 
 Plus d'informations seront fournies par la suite sur le fonctionnement global du système car le projet est toujours en cours de création.
