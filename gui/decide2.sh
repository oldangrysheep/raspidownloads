whiptail --title "How To Use" --msgbox "Click ok on every system you want then click download" 8 45
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/decide.sh
sudo chmod +x decide.sh
wait 5
sudo sh ./decide.sh
sudo rm -r decide.sh
