cd /home/pi/RomDownloader/Temp/Roms/nes


files=(*.sh)

for i in $(seq 0 $((${#files[@]}-1))); do 
    echo "$i) ${files[$i]}" 
done

whiptail --title "Select File" --backtitle "File Selector" --menu "Select the file from the list below:" 30 80 24 "{files[@]}" 2>&1 >/dev/tty)
if [[ $? != 0 ]]
then
    echo "Cancelled!"
    exit 1
fi
echo "$result"

echo "$

read -e -p "Select a file by index from the list: " -i 1 choice

# TODO validate and default choice

echo "File choice ${files[$choice]}"
