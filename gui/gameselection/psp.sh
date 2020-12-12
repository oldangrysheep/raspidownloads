#! /bin/bash
shopt -s nullglob
dir=`pwd`
cd /home/pi/RomDownloader/Temp/Roms/psp
arr=(*.sh)
for ((i=0; i<${#arr[@]}; i++)); do j=$((2*$i+2)); a[j]="${arr[$i]}"; a[j+1]=""; done
a[0]=""
# Next line has extra spaces at right to try to center it:
a[1]="Please make a selection from the files below                                                        "
result=$(whiptail --ok-button "OK button text" --cancel-button "Cancel Button Text" --title "Title Text" --backtitle "Text at upper left corner of page" --menu "Menu Text (not used??)" 30 160 24 "${a[@]}" 2>&1 >/dev/tty)
if [[ $? = 0 ]]
then
# ge 5 in next line should be length of file extension including . character, plus 1
  [ ${#result} -ge 5 ] && outfile="/path/to/files/$result" || echo "Selection not made"
fi
echo "$result"
sudo sh "$result"
cd "$dir"
