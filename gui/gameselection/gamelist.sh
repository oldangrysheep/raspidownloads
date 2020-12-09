cd /home/pi/RomDownloader/Temp/Roms/nes

saveIFS="$IFS"
IFS=$'\n'
array=($(<Name.txt))
IFS="$saveIFS"
echo ""
 
for i in "${array[@]}"; do echo "$i"; done # iterate over the array
echo "These are my Varibles above " 
echo "" 
#This is where the Wiptail script comes in..passing in the array ${array[@]}
whiptail --backtitle "Hi" --title "These are the names" --menu "Please select the name you like" 14 40 6 "${array[@]}"
#This shows exit status
exitstatus=$?
if [ $exitstatus = 0 ]; then
echo "User selected Ok and entered " 
 
#This is where I would like to echo out the value selected
#echo value
else
echo "User selected Cancel."
fi
