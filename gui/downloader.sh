#This is all setup stuff to make sure its all ready
if ! [ -x "$(command -v whiptail)" ]; then
  echo "Just installing Dependancies" 
  sudo apt-get install whiptail -y
fi

sudo rm -r downloader.sh
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/downloader.sh
sudo chmod +x downloader.sh




<<COMMENT
  WARNING DO NOT USE THIS SCRIPT ON SOMETHING IMPORTANT.
  IT MAY NOT BE SAFE FOR ONE REASON.
  1) I AM NOT AN EXPERT AT BASH SCRIPTING.
  Please i dont want you to mess up your files.
COMMENT

<<COMMENT
  If you still wish to use it. note the following things:
  1) Do not put your script into any of the dirs.
  2) You need to edit the directory variables so as to
     fit them to your using.
     Right now the script presumes that the script is
     in the same directory as the backup, working and recovery
     directory.
  Now feel free to play around or fork it to improve it. cheers :)
  Feedback is highly welcomed :)
COMMENT


clear

backup_dir="backup"         #The directory that has/will have the backups
working_dir="working"       #The directory that is to be backed up
recovery_dir="recovery"     #The directory where you want your recovery to be copied to
temp_dir="temp"             #A temp directory that the script needs

function download {
	{
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads.txt -p /home/ubuntu | whiptail --gauge "Downloading List" 6 60 0
    sudo rm -r downloads.txt
}



function recovery {
	{
	  if [ "$(ls -A $backup_dir)" ]; then
    mkdir $temp_dir
    for entry in "$backup_dir"/*
    do
      rsync -av  --compare-dest=../$temp_dir/ $entry/ $recovery_dir
      rm -r $temp_dir
      rsync -av $recovery_dir/ $temp_dir/
      done
      rm -r $temp_dir
    else
      echo "No backup found"
    fi
	} | whiptail --gauge "Recovering data ..." 6 60 0
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
