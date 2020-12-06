function advancedMenu {
    ADVSEL=$(whiptail --title "Decide What Systems You Want" --fb --menu "Choose an option" 15 60 4 \
        "1" "NES" \
        "2" "SNES" \
        "3" "Gameboy" \
        "4" "Gameboy Color" 3>&1 1>&2 2>&3)
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
