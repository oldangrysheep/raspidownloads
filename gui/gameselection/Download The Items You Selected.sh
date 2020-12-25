pwd
cd /usr/bin/RomDownloader/Temp/Roms/Items_To_Download/
pwd
cd nes
pwd
#The pwd is so i can tell if it properly moved to that directory
#Here We Download The Nes Games
sudo wget -r -H -nc -np -nH --cut-dirs=1 -e robots=off -l1 -P /usr/bin/RomDownloader/Roms/Downloaded -i ./itemlist.txt -B 'http://archive.org/download/'
sudo rm -r itemlist.txt
#And Were Done
cd /usr/bin/RomDownloader/Temp/Roms/Items_To_Download/
sudo mv /usr/bin/RomDownloader/Temp/Roms/Items_To_Download/* /usr/bin/RetroPie/roms
