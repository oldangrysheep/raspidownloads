#This is all setup stuff to make sure its all ready
#add this when extracting https://www.mexchip.com/en/2010/10/how-to-show-a-progress-bar-when-extracting-a-file/
# https://www.bradgillap.com/guide/post/bash-gui-whiptail-menu-tutorial-series-1 
if ! [ -x "$(command -v whiptail)" ]; then
  echo "Just installing Dependancies" 
  sudo apt-get install whiptail -y
fi

if ! [ -x "$(command -v dialog)" ]; then
  echo "Just installing Dependancies" 
  sudo apt-get install dialog -y
fi

if ! [ -x "$(command -v fim)" ]; then
  echo "Just installing Dependancies" 
  sudo apt-get install fim -y
fi

mkdir /home/pi/RomDownloader/Temp
cd /home/pi/RomDownloader/Temp
sudo rm -r downloader.sh
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/downloader.sh
sudo chmod +x downloader.sh

function advancedMenu {
    ADVSEL=$(whiptail --title "Rom Downloader" --fb --menu "Choose an option" 15 60 4 \
        "1" "Download All Roms (Not Recomended 100+ Gigabytes)" \
        "2" "Select Roms and Download" \
        "3" "Exit" 3>&1 1>&2 2>&3)
    case $ADVSEL in
        1)
            echo "Option 1"
            whiptail --title "Downloading All Roms" --msgbox "About to Start Downloading" 8 45
            wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/all.sh
            sudo chmod +x all.sh
            sudo sh all.sh
            rm -r all.sh
            clear
            sudo sh downloader.sh
        ;;
        2)
            echo "Option 2"
            wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/decide.sh
            sudo chmod +x decide.sh
            sudo sh decide.sh
            rm -r decide.sh
            clear
            sudo sh downloader.sh
        ;;
        3)
            echo "Option 3"
            clear
        ;;
    esac
}
advancedMenu

