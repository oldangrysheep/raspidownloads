wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads.txt
clear
URL="downloads.txt"
wget -i "$URL"
sudo rm -r downloads.txt
clear
sudo unzip *.zip
