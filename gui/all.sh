wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads.txt
URL="downloads.txt"
wget -i "$URL" 2>&1 | \
 stdbuf -o0 awk '/[.] +[0-9][0-9]?[0-9]?%/ { print substr($0,63,3) }' | \
 dialog --gauge "Download Test" 10 100
sudo rm -r downloads.txt
sudo unzip *.zip
