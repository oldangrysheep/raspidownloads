cd /home/pi/RetroPie/retropiemenu
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/Rom%20Downloader.sh
sudo chmod +x "Rom Downloader.sh"
sudo mkdir /home/pi/RomDownloader/Temp
cd /home/pi/RomDownloader/Temp
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/downloader.sh
sudo chmod +x downloader.sh
cd ~
sudo rm -r install.sh
