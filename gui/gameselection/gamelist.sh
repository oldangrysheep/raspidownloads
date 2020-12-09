#!/bin/bash
cd /home/pi/RomDownloader/Temp/Roms/nes
files=(*.sh)

for i in $(seq 0 $((${#files[@]}-1))); do 
    whiptail --title "Select File" --backtitle "File Selector" --menu "Select the file from the list below:" 30 80 24 "${a[@]}" 2>&1 >/dev/tty) 
done

read -e -p "Select a file by index from the list: " -i 1 choice

# TODO validate and default choice

echo "File choice ${files[$choice]}"
