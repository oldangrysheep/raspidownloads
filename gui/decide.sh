
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
            echo "https://archive.org/download/gb_20201207/Complete%20Rom%20Sets/nes.zip" >> itemlist.txt
            sudo sh ./decide.sh
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
            if (whiptail --title "Are You Sure?" --yes-button "Download" --yesno "Yes Will Download, No Will Bring You Back To The Menu." 10 60) then
    sudo wget -r -H -nc -np -nH --cut-dirs=1 -e robots=off -l1 -i ./itemlist.txt -B 'http://archive.org/download/'
    cd /usr/bin/RomDownloader/Temp/gb_20201207/games
    for i in {1..100}; do
   echo $i
   sleep 0.1
done | whiptail --gauge "Extracting Files ..." 10 50 0
    sudo unzip '*.zip'
    sudo rm -r *.zip
    sudo cp -a /usr/bin/RomDownloader/Temp/gb_20201207/games/* cd /home/pi/RetroPie/roms/
    whiptail --title "Your Downloads Are Done" --msgbox "Please restart emulation station to see the games." 8 45
    cd /usr/bin/RomDownloader/Temp
else
    sudo sh ./decide.sh
fi
            
            
        ;;
    esac
}
advancedMenu
