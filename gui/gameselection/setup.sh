cd /home/pi/RomDownloader/Temp/Roms
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/DownloadSelected.sh
sudo chmod +x DownloadSelected.sh
sudo mkdir -p Downloaded
sudo mkdir -p nes
sudo mkdir -p snes
sudo mkdir -p n64
sudo mkdir -p gb
sudo mkdir -p gbc
sudo mkdir -p gba
sudo mkdir -p nds
sudo mkdir -p virtualboy
sudo mkdir -p atari2600
sudo mkdir -p atari5200
sudo mkdir -p atari7800
sudo mkdir -p megadrive
sudo mkdir -p saturn
sudo mkdir -p dreamcast
sudo mkdir -p psx
sudo mkdir -p psp
cd /home/pi/RomDownloader/Temp/
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/gamelist.sh
sudo chmod +x gamelist.sh
sudo bash ./gamelist.sh
