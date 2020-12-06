wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/itemlist.txt
clear
wget -r -H -nc -np -nH --cut-dirs=1 -e robots=off -l1 -i ./itemlist.txt -B 'http://archive.org/download/'
sudo rm -r itemlist.txt
clear
sudo unzip *.zip
