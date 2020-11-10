sudo rm -r downloads.txt
sudo rm -r getcontent.sh
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/getcontent.sh
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads.txt
sudo wget -i downloads.txt
sudo unzip "*.zip"
exit
