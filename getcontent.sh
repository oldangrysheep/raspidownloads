sudo rm -r downloads.txt
sudo rm -r getcontent.sh
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/getcontent.sh
chmod +x getcontent.sh
echo -n "Do you want to download all my roms? (Y/N)"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads.txt
        sudo wget -i downloads.txt
else
    echo -n "Do You want to download all nes roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo Yes
else
    echo No
fi

fi
sudo unzip *.zip
exit
