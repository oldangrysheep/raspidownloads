#This is all setup stuff to make sure its all ready
if ! [ -x "$(command -v whiptail)" ]; then
  echo "Just installing Dependancies" 
  sudo apt-get install whiptail -y
fi

sudo rm -r downloader.sh
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/downloader.sh
sudo chmod +x downloader.sh

function download {
	{
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads.txt -p /home/ubuntu | whiptail --gauge "Downloading List" 6 60 0
    sudo rm -r downloads.txt
    
}



function decide {
	{
	  ping google.com
	}
}



while [ 1 ]
do
CHOICE=$(
whiptail --title "Backup program" --menu "Make your choice" 16 100 9 \
	"1)" "Download Whole Rom Library"  \
	"2)" "Recover your files."  \
	"9)" "End script"  3>&2 2>&1 1>&3
)


case $CHOICE in
	"1)")
		download
	;;
	"2)")
	  decide
	;;

	"9)") exit
        ;;
esac
done
exit
