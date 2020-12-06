sudo rm -r downloads.txt
sudo rm -r getcontent.sh
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/g>
echo -n "Do you want to download all my roms? (Y/N)"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/ma>
        sudo wget -i downloads.txt

else
    echo No
fi
sudo unzip *.zip
exit
