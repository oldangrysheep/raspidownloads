pwd
cd /home/pi/RomDownloader/Temp/Roms/Items_To_Download/
pwd
cd nes
pwd
#The pwd is so i can tell if it properly moved to that directory
#Here We Download The Nes Games
sudo wget -r -H -nc -np -nH --cut-dirs=1 -e robots=off -l1 -P /home/pi/RomDownloader/Roms/Downloaded -i ./itemlist.txt -B 'http://archive.org/download/'
sudo rm -r itemlist.txt
#And Were Done
cd /home/pi/RomDownloader/Temp/Roms/Items_To_Download/
sudo mv /home/pi/RomDownloader/Temp/roms/Items_To_Download/* /home/pi/RetroPie/roms
