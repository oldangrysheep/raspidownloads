#This is all setup stuff to make sure its all ready
if ! [ -x "$(command -v whiptail)" ]; then
  echo "Just installing Dependancies" 
  sudo apt-get install whiptail -y
fi

sudo rm -r downloader.sh
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/gui/downloader.sh
sudo chmod +x downloader.sh

clear


function contextSwitch {
	{
	ctxt1=$(grep ctxt /proc/stat | awk '{print $2}')
        echo 50
	sleep 1
        ctxt2=$(grep ctxt /proc/stat | awk '{print $2}')
        ctxt=$(($ctxt2 - $ctxt1))
        result="Number os context switches in the last secound: $ctxt"
	echo $result > result
	} | whiptail --gauge "Getting data ..." 6 60 0
}



function userKernelMode {
	{	
	raw=( $(grep "cpu " /proc/stat) )
        userfirst=$((${raw[1]} + ${raw[2]}))
        kernelfirst=${raw[3]}
	echo 50
        sleep 1
	raw=( $(grep "cpu " /proc/stat) )
        user=$(( $((${raw[1]} + ${raw[2]})) - $userfirst ))
	echo 90
        kernel=$(( ${raw[3]} - $kernelfirst ))
        sum=$(($kernel + $user))
        result="Percentage of last sekund in usermode: \
        $((( $user*100)/$sum ))% \
        \nand in kernelmode: $((($kernel*100)/$sum ))%"
	echo $result > result
	echo 100
	} | whiptail --gauge "Getting data ..." 6 60 0
} 

function interupts {
	{
	ints=$(vmstat 1 2 | tail -1 | awk '{print $11}')
        result="Number of interupts in the last secound:  $ints"
	echo 100
	echo $result > result
	} | whiptail --gauge "Getting data ..." 6 60 50
}

while [ 1 ]
do
CHOICE=$(
whiptail --title "Operative Systems" --menu "Make your choice" 16 100 9 \
	"1)" "The name of this script."   \
	"2)" "Time since last boot."  \
	"3)" "Number of processes and threads." \
	"4)" "Number of context switches in the last secound." \
	"5)" "How much time used in kernel mode and in user mode in the last secound." \
	"6)" "Number of interupts in the last secound." \
	"9)" "End script"  3>&2 2>&1 1>&3	
)


result=$(whoami)
case $CHOICE in
	"1)")   
		result="I am $result, the name of the script is start"
	;;
	"2)")   
	        OP=$(uptime | awk '{print $3;}')
		result="This system has been up $OP minutes"
	;;

	"3)")   
	        p=$(ps ax | wc -l)
                t=$(ps amx | wc -l)
		result="Number of processes $p\nNumber os threads $t"
        ;;

	"4)")   
	        contextSwitch
		read -r result < result
        ;;

	"5)")   
                userKernelMode
		read -r result < result
        ;;

	"6)")   
		interupts
		read -r result < result
        ;;

	"9)") exit
        ;;
esac
whiptail --msgbox "$result" 20 78
done
exit
