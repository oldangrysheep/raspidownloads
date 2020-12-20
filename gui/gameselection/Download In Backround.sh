pwd
cd /home/pi/RomDownloader/Temp/Roms/Items_To_Download/

# If you cannot understand this, read Bash_Shell_Scripting#if_statements again.
if (whiptail --title "Are You Sure" --yesno "This will download in the backround. It is not reccomended to start more than one downloading session at a time, as it could affect the download speed" 8 78); then
    echo "Ok"
else
    exit
fi

pwd
cd nes
pwd #The pwd is so i can tell if it properly moved to that directory
#Here We Download The selected games in backround
sudo wget
sudo chmod +x startdownloads.sh
screen -S downloads ./startdownloads.sh
#And Were Done
cd /home/pi/RomDownloader/Temp/Roms/Items_To_Download/
sudo mv /home/pi/RomDownloader/Temp/Roms/Items_To_Download/* /home/pi/RetroPie/roms
