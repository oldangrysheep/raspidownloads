wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/itemlistall.txt
clear
fim -a https://cdn.discordapp.com/attachments/758003968617087058/785224317083713566/8clh7pja3k361.png
wget -r -H -nc -np -nH --cut-dirs=1 -e robots=off -l1 -i ./itemlistall.txt -B 'http://archive.org/download/'
sudo rm -r itemlistall.txt
sudo rm -r index.html
rm -r 06
clear
sudo unzip *.zip
sudo rm -r *.zip
