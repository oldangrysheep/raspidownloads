#This is all setup stuff to make sure its all ready
if ! [ -x "$(command -v whiptail)" ]; then
  echo "Just installing Dependancies" 
  sudo apt-get install whiptail -y
  sudo reboot now
fi

if ! [ -x "$(command -v unzip)" ]; then
  echo "Just installing Dependancies" 
  sudo apt-get install unzip -y
  sudo reboot now
fi

DIR="/home/RomDownloader"
if [ -d "$DIR" ]; then
  ### Moving Program to new Locaton ###
  echo "Deleting and removing stuff ${DIR}..."
  sudo rm -r /home/RomDownloader
  sudo mkdir /usr/bin/RomDownloader
  cd /usr/bin/RomDownloader
  sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/downloader.sh
  sudo chmod +x downloader.sh
  sudo mkdir -p /usr/bin/RomDownloader/Temp
  sudo mkdir -p /usr/bin/RomDownloader/Temp/Roms
  cd /usr/bin/RomDownloader/Temp
else
  # congrats theres nothing to do here
fi


function advancedMenu {
    ADVSEL=$(whiptail --title "Rom Downloader" --menu "Choose an option" 15 60 4 \
        "1" "Download All Roms (Not Recomended 100+ Gigabytes)" \
        "2" "Select Roms and Download" \
        "3" "Download Specfic Games" \
        "4" "Media Library" \
        "5" "Options" \
        "6" "About" ]
		"7" "Update" \
        "8" "Exit" 3>&1 1>&2 2>&3)
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
        exit
        ;;
        5) 
        whiptail --title "Options Menu" --infobox "Not availible yet" 8 7
		;;
        6) 
        whiptail --title "About" --infobox "This was orignally just meant for my portable pi project, but I might was make this public so here we are" 8 7
        ;;
		
		7)
		sudo rm -r *
		sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/downloader.sh
		sudo chmod +x downloader.sh
		;;
        
        8)
         #running clean up
		 sudo rm -r /usr/bin/RomDownloader/Temp/Roms/Items
		 sudo rm -r all.sh
		 sudo rm -r setup.sh
		 #sudo rm -r 
        ;;
        
    esac
}
advancedMenu

exit
