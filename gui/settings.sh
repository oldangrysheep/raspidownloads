
function advancedMenu {
    ADVSEL=$(whiptail --title "Decide What Systems You Want" --menu "Choose an option" 15 60 4 \
        "1" "Reccomended to leave default" \
        "2" "NordVpn Options" 3>&1 1>&2 2>&3)
    case $ADVSEL in
        1)
            echo "https://archive.org/download/gb_20201207/Complete%20Rom%20Sets/nes.zip" >> itemlist.txt
            sudo sh ./decide.sh
        ;;
        2)
        echo "decide to login or not"
        ;;
    esac
}
advancedMenu

