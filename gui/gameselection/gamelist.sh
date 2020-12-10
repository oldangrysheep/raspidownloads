
function advancedMenu {
    ADVSEL=$(whiptail --title "Select The System You Want To Select The Games From" --menu "Choose an option" 15 60 4 \
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
            sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/gameselection/nes.sh
            sudo bash ./nes.sh
        ;;
        2)
            echo "https://archive.org/download/gb_20201207/Complete%20Rom%20Sets/snes.zip" >> itemlist.txt
            sudo sh ./decide.sh
        ;;
        3)
            echo "https://archive.org/download/gb_20201207/Complete%20Rom%20Sets/gb.zip" >> itemlist.txt
            sudo sh ./decide.sh
        ;;
        4)
            echo "https://archive.org/download/gb_20201207/Complete%20Rom%20Sets/gbc.zip" >> itemlist.txt
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
            echo "https://archive.org/download/gb_20201207/Complete%20Rom%20Sets/virtualboy.zip" >> itemlist.txt
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
            exit
        ;;
fi
            
            
        ;;
    esac
}
advancedMenu
