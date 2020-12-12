
function advancedMenu {
    ADVSEL=$(whiptail --title "Select The System You Want To Select The Games From" --menu "Choose an option" 15 60 4 \
        "1" "Download All Selected" \
        "2" "Download Selected In Backround" \
        "3" "Nintendo Entertainment System" \
        "4" "Super Nintendo Entertainemnt System" \
        "5" "Gameboy" \
        "6" "Gameboy Color" \
        "7" "Gameboy Advanced" \
        "8" "Nintendo 64" \
        "9" "Nintendo Ds" \
        "10" "Nintendo Virtual Boy" \
        "11" "Megadrive Games" \
        "12" "Sega Saturn" \
        "13" "Sega Dreamcast" \
        "14" "Playstation 1" \
        "15" "Playstation Portable" 3>&1 1>&2 2>&3)
    case $ADVSEL in
        1)
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/Download%20The%20Items%20You%20Selected.sh
            sudo chmod +x "Download The Items You Selected.sh"
            sudo sh "Download The Items You Selected.sh"
            whiptail --title "Downloads Complete" --msgbox "Click Exit On The Main Menu Then Restart Emulation Station In Order To See Roms" 8 78
            sudo sh downloader.sh
        ;;
        2)
            exit
        ;;
        3)
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/nes.sh
            sudo bash ./nes.sh
            sudo rm -r nes.sh
            cd /home/pi/RomDownloader/Temp
            sudo sh gamelist.sh
        ;;
        4)
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/snes.sh
            sudo bash ./snes.sh
            sudo rm -r snes.sh
            cd /home/pi/RomDownloader/Temp
            sudo sh gamelist.sh
        ;;
        5)
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/n64.sh
            sudo bash ./n64.sh
            sudo rm -r n64.sh
            cd /home/pi/RomDownloader/Temp
            sudo sh gamelist.sh
        ;;
        6)
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/nds.sh
            sudo bash ./nds.sh
            sudo rm -r nds.sh
            cd /home/pi/RomDownloader/Temp
            sudo sh gamelist.sh
        ;;
        7)
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/gba.sh
            sudo bash ./gba.sh
            sudo rm -r gba.sh
            cd /home/pi/RomDownloader/Temp
            sudo sh gamelist.sh
        ;;
        8)
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/nes.sh
            sudo bash ./nes.sh
            sudo rm -r nes.sh
            cd /home/pi/RomDownloader/Temp
            sudo sh gamelist.sh
        ;;
        9)
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/nds.sh
            sudo bash ./nds.sh
            sudo rm -r nds.sh
            cd /home/pi/RomDownloader/Temp
            sudo sh gamelist.sh
        ;;
        10)
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/virtualboy.sh
            sudo bash ./virtualboy.sh
            sudo rm -r virtualboy.sh
            cd /home/pi/RomDownloader/Temp
            sudo sh gamelist.sh
        ;;
        11)
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/megadrive.sh
            sudo bash ./megadrive.sh
            sudo rm -r megadrive.sh
            cd /home/pi/RomDownloader/Temp
            sudo sh gamelist.sh
        ;;
        12)

            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/saturn.sh
            sudo bash ./saturn.sh
            sudo rm -r saturn.sh
            cd /home/pi/RomDownloader/Temp
            sudo sh gamelist.sh
        ;;
        13)
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/dreamcast.sh
            sudo bash ./dreamcast.sh
            sudo rm -r dreamcast.sh
            cd /home/pi/RomDownloader/Temp
            sudo sh gamelist.sh
        ;;
        14)
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/psx.sh
            sudo bash ./psx.sh
            sudo rm -r psx.sh
            cd /home/pi/RomDownloader/Temp
            sudo sh gamelist.sh
        ;;  
        15) 
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/psp.sh
            sudo bash ./psp.sh
            sudo rm -r psp.sh
            cd /home/pi/RomDownloader/Temp
            sudo sh gamelist.sh
        ;;
    esac
}
advancedMenu
