sudo rm -r downloader.sh
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/downloader.sh
sudo chmod +x downloader.sh

if (whiptail --title "Example Dialog" --yesno "This is an example of a yes/no box." 8 78); then
    echo "User selected Yes, exit status was $?."
else
    echo "User selected No, exit status was $?."
fi
