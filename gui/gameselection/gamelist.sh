#!/bin/bash
cd /home/pi/RomDownloader/Temp/Roms/nes
#!/bin/bash
shopt -s nullglob
array=(*.sh)
# Create new array with null string ("") item after each filename item, so whiptail has two strings to read for each filename.
for ((i=0; i<${#arr[@]}; i++)); do j=$((2*$i)); a[j]="${arr[$i]}"; a[j+1]=""; done
result=$(whiptail --title "Select File" --backtitle "File Selector" --menu "Select the file from the list below:" 30 80 24 "${a[@]}" 3>&1 1>&2 2>&3)
if [[ $? != 0 ]]
then
    echo "$i"
    echo "${a[@]}"
    echo "$a"
    echo "${arr[$i]}"
    echo "$result"
    echo "Cancelled!"
    exit 1
fi
echo "$result"
