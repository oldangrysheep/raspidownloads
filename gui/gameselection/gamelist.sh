Filebrowser() {
if [ -z $1 ]; then
imgpath=$(ls -lhp / | awk -F ' ' ' { print $9 " " $5 } ')
else
imgpath=$(ls -lhp "/$1" | awk -F ' ' ' { print $9 " " $5 } ')
fi
if [ -z $1 ]; then
pathselect=$(whiptail --menu "Select Image File" 40 50 30 --cancel-button Cancel --ok-button Select $imgpath 3>&1 1>&2 2>&3)
else
pathselect=$(whiptail --menu "Select Image File" 40 50 30 --cancel-button Cancel --ok-button Select ../ BACK $imgpath 3>&1 1>&2 2>&3)
fi
RET=$?
if [ $RET -eq 1 ]; then
## This is the section where you control what happens when the user hits Cancel
AdvancedMenu
exit 0
elif [ $RET -eq 0 ]; then
if [[ -d "/$1$pathselect" ]]; then
Filebrowser "/$1$pathselect"
elif [[ -f "/$1$pathselect" ]]; then
## Do your thing here, this is just a stub of the code I had to do what I wanted the script to do.
fileout=`file "$1$pathselect"`
filename=`readlink -m $1$pathselect`
if [[ $fileout =~ x86\ boot\ sector$ ]]; then
whiptail --yesno --title "! WARNING !" "About to try and automatically resize $filename. Are you sure ?" 10 50
if [ $? -ne 0 ]; then
Filebrowser
fi
else
whiptail --msgbox --title "! ERROR ! ERROR ! ERROR ! " "Selected file is not an image file." 8 44
Filebrowser
fi
else
echo pathselect $1$pathselect
whiptail --title "! ERROR !" --msgbox "Error setting path to image file." 8 44
unset base
unset imgpath
Filebrowser
fi
exit 0
fi
}
