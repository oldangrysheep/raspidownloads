echo -n "Do You want to download all roms?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads.txt
    sudo wget downloads.txt 
    sudo rm -r downloads.txt
    sudo unzip *.zip
else
    echo No
fi
