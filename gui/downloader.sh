sudo rm -r downloader.sh
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/downloader.sh
sudo chmod +x downloader.sh

if (whiptail --title "Example Dialog" --yesno "This is an example of a yes/no box." 8 78); then
    whiptail --title "Menu example" --menu "Choose an option" 25 78 16 \
    "<-- Back" "Return to the main menu." \
    "Add User" "Add a user to the system." \
    "Modify User" "Modify an existing user." \
else
    echo "User selected No, exit status was $?."
fi
