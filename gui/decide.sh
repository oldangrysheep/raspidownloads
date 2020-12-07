whiptail --title "How To Use" --msgbox "Click ok on every system you want then click download" 8 45

function advancedMenu {
    ADVSEL=$(whiptail --title "Decide What Systems You Want" --fb --menu "Choose an option" 15 60 4 \
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
            echo "nes_games_2000_raspi" >> itemlist.txt
            sudo sh ./decide.sh
        ;;
        2)
            exit
        ;;
        3)
            echo "Option 3"
            exit
        ;;
        4)
            echo yeet
        ;;
        5)
            exit
        ;;
        6)
            exit
        ;;
        7)
            exit
        ;;
        8)
            exit
        ;;
        9)
            exit
        ;;
        10)
            exit
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
            if (whiptail --title "Are You Sure?" --yesno "Choose between Yes and No." 10 60) then
    sudo wget -r -H -nc -np -nH --cut-dirs=1 -e robots=off -l1 -i ./itemlist.txt -B 'http://archive.org/download/'
    sudo unzip *.zip
else
    sudo sh ./decide.sh
fi
            
            
        ;;
    esac
}
advancedMenu
