whiptail --title "How To Use" --msgbox "Click ok on every system you want then click download" 8 45

function advancedMenu {
    ADVSEL=$(whiptail --title "Decide What Systems You Want" --menu "Choose an option" 15 60 4 \
        "1" "Nintendo Entertainment System" \
        "2" "Super Nintendo Entertainemnt System" \
        "3" "Gameboy" \
        "4" "Gameboy Color" \
        "5" "Gameboy Advanced" \
        "6" "Nintendo 64" \
        "7" "Nintendo Ds" \
        "8" "Nintendo Virtual Boy" \
        "9" "Megadrive Games" \
        "10" "Sega Saturn" \
        "11" "Sega Dreamcast" \
        "12" "Playstation 1" \
        "13" "Playstation Portable" \
        "14" "Download All Selected" 3>&1 1>&2 2>&3)
    case $ADVSEL in
        1)
            echo "https://archive.org/download/gb_20201207/games/nes.zip" >> itemlist.txt
            sudo sh ./decide.sh
        ;;
        2)
            echo "https://archive.org/download/gb_20201207/games/snes.zip" >> itemlist.txt
            sudo sh ./decide.sh
        ;;
        3)
            echo "https://archive.org/download/gb_20201207/games/gb.zip" >> itemlist.txt
            sudo sh ./decide.sh
        ;;
        4)
            echo "https://archive.org/download/gb_20201207/games/gbc.zip" >> itemlist.txt
            sudo sh ./decide.sh
        ;;
        5)
            echo "https://archive.org/download/gb_20201207/games/gba.zip" >> itemlist.txt
            sudo sh ./decide.sh
        ;;
        6)
            exit
        ;;
        7)
            echo "https://archive.org/download/gb_20201207/games/nds.zip" >> itemlist.txt
            sudo sh ./decide.sh
        ;;
        8)
            echo "https://archive.org/download/gb_20201207/games/virtualboy.zip" >> itemlist.txt
            sudo sh ./decide.sh
        ;;
        9)
            echo "https://archive.org/download/gb_20201207/games/megadrive.zip" >> itemlist.txt
            sudo sh ./decide.sh
        ;;
        10)
            echo "https://archive.org/download/gb_20201207/games/saturn.zip" >> itemlist.txt
            sudo sh ./decide.sh
        ;;
        11)
            exit
        ;;
        12)
            exit
        ;;
        13)
            exit
        ;;
        14)
            if (whiptail --title "Are You Sure?" --yes-button "Download" --yesno "Yes Will Download, No Will Bring You Back To The Menu." 10 60) then
    sudo wget -r -H -nc -np -nH --cut-dirs=1 -e robots=off -l1 -i ./itemlist.txt -B 'http://archive.org/download/'
    cd /home/pi/RomDownloader/Temp/gb_20201207/games
    sudo unzip '*.zip'
    sudo rm -r *.zip
    sudo cp /home/pi/RomDownloader/Temp/gb_20201207/games/* cd /home/pi/RetroPie/roms/
    cd /home/pi/RomDownloader/Temp
else
    sudo sh ./decide.sh
fi
            
            
        ;;
    esac
}
advancedMenu
