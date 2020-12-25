whiptail --title "Media Downloads" --infobox "I am still working on this, but for right now, streaming is going to be lower quality than the downloading option" 8 78
        
        #from here on Im seeing if it will work decently if i put it here
        
function advancedMenu {
    ADVSEL=$(whiptail --title "What Do You Want To Do" --menu "Choose an option" 15 60 4 \
        "1" "Stream" \
        "2" "Download" 3>&1 1>&2 2>&3)
    case $ADVSEL in
        1)
        exit    
        ;;
        2)
        exit
        ;;
    esac
}
advancedMenu
