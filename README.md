### Raspberry-LCD-Script By [ SnokSoft ]




![](https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/master/Images%20Fan-HAT/SnokSoft.png)

![](https://img.shields.io/github/stars/pandao/editor.md.svg) ![](https://img.shields.io/github/forks/pandao/editor.md.svg) ![](https://img.shields.io/github/tag/pandao/editor.md.svg) ![](https://img.shields.io/github/release/pandao/editor.md.svg) ![](https://img.shields.io/github/issues/pandao/editor.md.svg) ![](https://img.shields.io/bower/v/editor.md.svg)





# Contrôlé PWM Fan HAT en Raspberry Pi, I2C, Moniteur de température

![](https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/master/Images%20Fan-HAT/Fan-HAT_1.png)
![](https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/master/Images%20Fan-HAT/Fan-HAT_2.png)
![](https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/master/Images%20Fan-HAT/Fan-HAT_3.png)
![](https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/master/Images%20Fan-HAT/Fan-HAT_4.png)
![](https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/master/Images%20Fan-HAT/Fan-HAT_5.png)
![](https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/master/Images%20Fan-HAT/Fan-HAT_6.png)
![](https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/master/Images%20Fan-HAT/Fan-HAT_7.png)


Contrôlé PWM Fan Vitesse via I2C Bus, moniteur de température en temps réel

Livré avec manuel et exemples en C/Python

CARACTÉRISTIQUES EN UN COUP D'OEIL

Pilote PCA9685 PWM comme fan contrôleur, capacité de conduite puissante, réglage PWM automatique
0.91 ″ OLED, 128 × 32 pixels, affiche les températures de la carte ou tout autre contenu défini par l'utilisateur en temps réel
Adopte la taille 3007 contrôlée par PWM fan, jusqu'à 8000 tr/min, apporte un fort débit d'air
Prend en charge la récupération des données de température en temps réel, puis le réglage automatique de la vitesse, configuration programmable
I2C broches, pour connecter d'autres cartes de contrôle hôte
Sorties PWM 16 canaux, pour piloter d'autres appareils PWM externes
Livré avec des dissipateurs de chaleur, un meilleur effet de refroidissement
0.91 ″ Mini écran OLED
128 × 32 pixels, I2C Contrôlé
Affiche la température de la carte ou tout autre contenu défini par l'utilisateur en temps réel
![](https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/master/Images%20Fan-HAT/Fan-HAT_1.png)

Whatest à bord

![](https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/master/Images%20Fan-HAT/Fan-HAT_2.png)


( 1 ) Standard Raspberry Pi En-tête GPIO 40 PIN
( 2 ) Pilote PCA9685 PWM
( 3 ) 3007 taille PWM réglable fan
( 4 ) PCA9685 I2C configuration de l'adresse
( 5 ) Reservé I2C broches de contrôle
( 6 ) Canaux de sortie PCA9685 réservés
( 7 ) 0.91 écran OLED '"

## Contenu de l'emballage : 

( 1 ) Fan HAT x1
( 2 ) PI4-DISSIPATEUR DE CHALEUR-SET x1
( 3 ) Tête mâle x1
( 4 ) Pack d'entretoises (2pcs) x1
Ressources

DOCUMENTS
Schématique
Fiche technique SSD1306
Fiche technique RT9193
Fiche technique PCA9685
Wiki
Exemple
Codes
 
Brochage


![](https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/master/Images%20Fan-HAT/Fan-HAT_7.png)

##==============
#  Install Fan HAT  
##==============

# Fan HAT

PWM Controlled Fan HAT For Raspberry Pi, I2C Bus, PCA9685 Driver, Temperature Monitor
Introduction
This is a PWM controlled Fan HAT, which is designed for Raspberry Pi, I2C Bus, PCA9685 driver, it can be used as a temperature monitor as well.
### Features
* PCA9685 PWM driver as the fan controller, powerful driving capability, auto PWM adjustment.
* 0.91" OLED, 128x32 pixels, displays board temperature or other user-defined content in real-time.
* Adopts 3007 size PWM controlled fan, up to 8000rpm speed, brings strong airflow.
* Supports retrieving temperature data in real-time, and then adjusting the speed automatically, programmable configuration.
* I2C pins, for connecting other host control boards.
* 16-ch PWM outputs, for driving other external PWM devices.
* Comes with heat sinks, better cooling effect.
### Specifications
* Operating voltage: 5V
* Logic level: 3.3V
* Driver: PCA9685
* Interface: I2C
* Fan PWM driver duty cycle: ≥25%
* Fan RPM (max): 8000 RPM
* OLED driver: SSD1306
* OLED resolution: 128 × 32
* OLED display color: White
* OLED FOV: > 160°
* Mounting holes: 3.0mm
### About board
![](https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/master/Images%20Fan-HAT/Fan-HAT_2.png)
( 1 ) Standard Raspberry Pi 40PIN GPIO header
( 2 ) PCA9685 PWM driver
( 3 ) 3007 size PWM controlled adjustable fan
( 4 ) PCA9685 I2C address configuration
( 5 ) Reserved I2C control pins
( 6 ) Reserved PCA9685 output channels
( 7 ) 0.91inch OLED display
# Pinout
## Relationiship of temperature and Fan speed
![](https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/master/Images%20Fan-HAT/Fan-HAT-11.png)
# Example
## Hardware connection
First at all, please connect the Fan HAT to Raspberry Pi by attaching it on the 40PIN GPIO.
The standoffs and screws can be sued to hold the Fan HAT in another side.
![](https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/master/Images%20Fan-HAT/Fan-HAT_4.png)

Libraries Installation for RPi
PS: If you are using the system of the Bullseye branch, you need to change "apt-get" to "apt". The system of the Bullseye branch only supports Python3.
First of all you make sure to use which language C or python Open the terminal of Raspberry Pi and install libraries as guides below

Install Library
If you use the bookworm system, you can only use lgpio library, bcm2835 and wiringPi can't be installed and used.
## BCM2835
```bash
# Open the Raspberry Pi terminal and run the following command
wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.71.tar.gz
tar zxvf bcm2835-1.71.tar.gz 
cd bcm2835-1.71/
sudo ./configure && sudo make && sudo make check && sudo make install
# For more, you can refer to the official website at: http://www.airspayce.com/mikem/bcm2835/
```
## WiringPi
```bash
#Open the Raspberry Pi terminal and run the following command
cd
sudo apt-get install wiringpi
#For Raspberry Pi systems after May 2019 (earlier than that can be executed without), an upgrade may be required:
wget https://project-downloads.drogon.net/wiringpi-latest.deb
sudo dpkg -i wiringpi-latest.deb
gpio -v
# Run gpio -v and version 2.52 will appear, if it doesn't it means there was an installation error

# Bullseye branch system using the following command:
git clone https://github.com/WiringPi/WiringPi
cd WiringPi
. /build
gpio -v
# Run gpio -v and version 2.70 will appear, if it doesn't it means there was an installation error
```
lgpio
```bash
#Open the Raspberry Pi terminal and run the following command
wget https://github.com/joan2937/lg/archive/master.zip
unzip master.zip
cd lg-master
sudo make install
#Raspberry Pi 5 
sudo apt install python3-rpi-lgpio
#For more details, you can refer to https://github.com/gpiozero/lg
```
Install Python Library
```bash
#python2
sudo apt-get update
sudo apt-get install python-pip
sudo pip install RPi.GPIO
sudo apt-get install python-smbus
#python3
sudo apt-get update
sudo apt-get install python3-pip
sudo pip install RPi.GPIO
sudo apt-get install python3-smbus
```
# Download example
Open the terminal and run the following commands to download example
```bash
cd
sudo apt-get install p7zip-full
wget https://files.waveshare.com/upload/0/06/Fan_HAT.7z
7z x Fan_HAT.7z  -r -o./Fan_HAT
```
## Run the example
C
```bash
cd
cd Fan_HAT/c/
make clean 
make
sudo ./main
```
Python
```bash
cd
cd Fan_HAT/python/
sudo python main.py
```
Run when booting
Modify rc.local script:
```bash
sudo nano /etc/rc.local
```
Add the lines below to the script, you need to set them before exit 0:
```bash
fi
sudo /home/pi/Fan_HAT/c/main &
#exit 0
```
Resources
Documents
[Schematic][Schematic]
[SSD1306 datasheet](https://files.waveshare.com/upload/a/af/SSD1306-Revision_1.1.pdf "SSD1306 datasheet")
[RT9193 datasheet](https://files.waveshare.com/upload/f/f6/RT9193.pdf "RT9193 datasheet")
[PCA9685 datasheet](https://files.waveshare.com/upload/6/68/PCA96_datasheet.pdf "PCA9685 datasheet")
Example
[Codes](https://files.waveshare.com/upload/0/06/Fan_HAT.7z "Codes")
FAQ
Question: Why does the python or python3 program prompt the following questions (Debian Bullseye)?
![](https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/master/Images%20Fan-HAT/FAN_HAT_OLED.png)

[Schematic]: https://files.waveshare.com/upload/6/6f/Fan-HAT-Schematic.pdf "Schematic"
