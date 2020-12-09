cd /home/pi/RomDownloader/Temp/Roms/nes
i=0
s=65    # decimal ASCII "A" 
for f in *.sh
do
    echo "$files"
done



whiptail --backtitle "Welcome to SEUL" --title "Restore Files" \
    --menu "Please select the file to restore" 14 40 6 "${files[@]}"
    
    result=$(whiptail-command 3>&2 2>&1 1>&3-)
    
    ((index = 2 * ( $( printf "%d" "'$result" ) - 65 ) + 1 ))


echo "$result"
echo "$f"
echo "$files"
echo "$s++"
echo "Updated text"
echo "$i"
echo "$s"
echo "$index"
