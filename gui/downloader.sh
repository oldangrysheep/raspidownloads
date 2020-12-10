#This is all setup stuff to make sure its all ready
#add this when extracting https://www.mexchip.com/en/2010/10/how-to-show-a-progress-bar-when-extracting-a-file/
# https://www.bradgillap.com/guide/post/bash-gui-whiptail-menu-tutorial-series-1 
if ! [ -x "$(command -v whiptail)" ]; then
  echo "Just installing Dependancies" 
  sudo apt-get install whiptail -y
fi

if ! [ -x "$(command -v unzip)" ]; then
  echo "Just installing Dependancies" 
  sudo apt-get install unzip -y
fi

sudo mkdir -p /home/pi/RomDownloader/Temp
sudo mkdir -p /home/pi/RomDownloader/Temp/Roms
cd /home/pi/RomDownloader/Temp

function advancedMenu {
    ADVSEL=$(whiptail --title "Rom Downloader" --menu "Choose an option" 15 60 4 \
        "1" "Download All Roms (Not Recomended 100+ Gigabytes)" \
        "2" "Select Roms and Download" \
        "3" "Download Specfic Games" \
        "4" "Exit" 3>&1 1>&2 2>&3)
    case $ADVSEL in
        1)
            echo "Option 1"
            whiptail --title "Downloading All Roms" --msgbox "About to Start Downloading" 8 45
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/all.sh
            sudo chmod +x all.sh
            sudo sh ./all.sh
            rm -r all.sh
            
            sudo sh downloader.sh
        ;;
        2)
            echo "Option 2"
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/decide2.sh
            sudo chmod +x decide2.sh
            wait 5
            sudo sh ./decide2.sh
            sudo rm -r decide2.sh
            
            sudo sh downloader.sh
        ;;
        3)
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/setup.sh
            sudo sh ./setup.sh
            #wget insert here
        ;;
        4)
            cd /home/pi/RomDownloader/Temp
            sudo rm -r *
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/downloader.sh
            sudo chmod +x downloader.sh
            
            exit
            
            
            
        ;;
        
    esac
}
advancedMenu

exit
