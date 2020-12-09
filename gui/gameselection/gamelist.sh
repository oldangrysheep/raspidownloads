cd /home/pi/RomDownloader/Temp/Roms
i=0
s=65    # decimal ASCII "A" 
for f in *.sh
done

whiptail --backtitle "Welcome to Chillys Rom Downloader" --title "Download Games" \
    --menu "Please select the Game to Download" 14 40 6 "${files[@]}"
    

result=$(echo 3>&2 2>&1 1>&3-)

echo "${files[@]}"

finalresult=$((index = 2 * ( $( printf "%d" "'$result" ) - 65 ) + 1 ))

