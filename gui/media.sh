whiptail --title "Media Downloads" --infobox "With this you will be able to download movies and tv shows found online. Only shows and movies with the traditional https encryption will be availible and a lot will b e lower quality" 8 78
        
        #from here on Im seeing if it will work decently if i put it here
        
function advancedMenu {
    ADVSEL=$(whiptail --title "What Do You Want To Download" --menu "Choose an option" 15 60 4 \
        "1" "Movies" \
        "2" "Tv" 3>&1 1>&2 2>&3)
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
