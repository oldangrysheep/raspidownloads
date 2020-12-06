
echo "yes"
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
        "11" "Playstation 1" \
        "12" "Playstation Portable (100+ Gigabytes)" \ 
        "13" "Sega Dreamcast" 3>&1 1>&2 2>&3)
    case $ADVSEL in
        1)
            exit
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
    esac
}
advancedMenu
