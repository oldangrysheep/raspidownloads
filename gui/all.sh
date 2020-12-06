wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/itemlistall.txt
clear
wget -r -H -nc -np -nH --cut-dirs=1 -e robots=off -l1 -i ./itemlistall.txt -B 'http://archive.org/download/'
sudo rm -r itemlistall.txt
sudo rm -r index.html
clear
sudo unzip *.zip
