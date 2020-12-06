#This is all setup stuff to make sure its all ready
if ! [ -x "$(command -v whiptail)" ]; then
  echo "Just installing Dependancies" 
  sudo apt-get install whiptail -y
fi

sudo rm -r downloader.sh
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/downloader.sh
sudo chmod +x downloader.sh

function advancedMenu {
    ADVSEL=$(whiptail --title "Advanced Menu" --fb --menu "Choose an option" 15 60 4 \
        "1" "Download All Roms (Not Recomended 100+ Gigabytes" \
        "2" "Select Roms and Download" \
        "3" "Exit" 3>&1 1>&2 2>&3)
    case $ADVSEL in
        1)
            echo "Option 1"
            whiptail --title "Downloading All Roms" --msgbox "About to Start Downloading" 8 45
            wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/all.sh
            sudo sh all.sh
            rm -r all.sh
            sudo sh downloader.sh
        ;;
        2)
            echo "Option 2"
            whiptail --title "Option 1" --msgbox "You chose option 2. Exit status $?" 8 45
        ;;
        3)
            echo "Option 3"
            exit
        ;;
    esac
}
advancedMenu
