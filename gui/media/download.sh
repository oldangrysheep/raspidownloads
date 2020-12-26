sudo mkdir Tv_D
sudo mkdir Movies_D

function advancedMenu {
    ADVSEL=$(whiptail --title "What do you want to download?" --menu "Choose an option" 15 60 4 \
        "1" "Movies" \
        "2" "Tv 3>&1 1>&2 2>&3)
    case $ADVSEL in
        1)
		cd Movies_D
        sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/media/Movies_D/download.sh
		chmod +x download.sh
		sudo sh ./download.sh
        ;;
        2)
		cd Tv_D
        sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/media/Tv_D/download.sh
		sudo chmod +x download.sh
		sudo sh ./download.sh
        ;;
    esac
}
advancedMenu
