#!/bin/bash
cd /home/pi/RomDownloader/Temp/Roms/nes

RADIOLIST=()
for ((i=0; i<${#repoar[@]}; i++))
do
    RADIOLIST+=("$i" "${repoar[$i]}" "OFF")
done

let ARLENGTH=${#repoar[@]}
whiptail --radiolist "Projects found" 20 78 $ARLENGTH "${RADIOLIST[@]}"
