cd /home/pi/RomDownloader/Temp/Roms
i=0
s=65    # decimal ASCII "A" 
for f in *.sh
do
    # convert to octal then ASCII character for selection tag
    files[i]=$(echo -en "\0$(( $s / 64 * 100 + $s % 64 / 8 * 10 + $s % 8 ))")
    files[i+1]="$f"    # save file name
    ((i+=2))
    ((s++))
done

whiptail --backtitle "Welcome to Chillys Rom Downloader" --title "Download Games" \
    --menu "Please select the Game to Download" 14 40 6 "${files[@]}"

result=$(whiptail-command 3>&2 2>&1 1>&3-)
