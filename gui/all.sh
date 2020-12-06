
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads.txt
  
    sudo wget -i downloads.txt 
    for i in $(seq 1 100)
do
    sleep 0.1 
    echo $i
done | whiptail --title 'Downloading Roms' --gauge 'Downloading Roms...' 6 60 0
    #sudo rm -r downloads.txt
    sudo unzip *.zip
