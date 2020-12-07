cd /home/pi/RomDownloader/Temp/roms
sudo wget -r -H -nc -np -nH --cut-dirs=1 -e robots=off -l1 -P /home/pi/RomDownloader/Roms/Downloaded -i ./itemlistall.txt -B 'http://archive.org/download/'

