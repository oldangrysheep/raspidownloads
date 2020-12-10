pwd
cd cd cd ~/RomDownloader/Temp/roms/Items_To_Download/nes
sudo wget -r -H -nc -np -nH --cut-dirs=1 -e robots=off -l1 -P /home/pi/RomDownloader/Roms/Downloaded -i ./itemlist.txt -B 'http://archive.org/download/'
sudo rm -r itemlist.txt
sudo mv /home/pi/RomDownloader/Temp/roms/Items_To_Download/* /home/pi/RetroPie/roms
