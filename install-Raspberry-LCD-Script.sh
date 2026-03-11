#!/bin/bash
# A simple menu-driven script
####[ COLOR ]###################################
# \033]01;31\] # pink
# \033]00m\]   # white
# \033]01;36\] # bold green
# \033]02;36\] # green
# \033]01;34\] # blue
# \033]01;33\] # bold yellow
# \033[0;31m     # rad
################################################
# Raspberry-LCD-Script
wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.71.tar.gz
tar zxvf bcm2835-1.71.tar.gz
cd bcm2835-1.71/
sudo ./configure && sudo make && sudo make check && sudo make install
cd ~
ls

git clone https://github.com/WiringPi/WiringPi
cd WiringPi
./build
gpio -v
cd ~

wget https://github.com/joan2937/lg/archive/master.zip
unzip master.zip
cd lg-master
sudo make install
# sudo apt install python3-rpi-lgpio # [ Raspberry Pi 5 ]

cd ~
sudo apt --fix-broken install
sudo apt install python3 python3-pip
sudo apt update || sudo rm -rf /var/lib/apt/lists/*

sudo apt clean 
sudo apt update
sudo apt install python3-pip -y
sudo pip install RPi.GPIO --break-system-packages
sudo apt-get install python3-smbus
sudo apt-get install p7zip-full -y

cd /opt

sudo wget https://files.waveshare.com/upload/0/06/Fan_HAT.7z
ls

sudo 7z x Fan_HAT.7z  -r -o./Fan_HAT
ls
sudo chmod 777 -R Fan_HAT
cd Fan_HAT/c/
make clean
make
# sudo ./main

cd /etc
sudo wget https://raw.githubusercontent.com/SnokOS/Raspberry-LCD-Script/refs/heads/master/rc.local

ls
cd ~
sudo chmod 777 /etc/rc.local
sudo reboot

