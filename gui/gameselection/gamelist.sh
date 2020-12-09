#!/bin/bash
cd /home/pi/RomDownloader/Temp/Roms/nes

read -ra array <<<$(ifconfig -a | awk '!/^ / && NF {print $1; print $1}')
whiptail --title Networking --menu "select your choice" 16 78 5 "${array[@]}"
