if ! [ -x "$(command -v fim)" ]; then
  echo 'Error: git is not installed.' >&2
  exit 1
fi

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

echo -n "Do You want to decide which roms you get??"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/getcontent.sh
    sudo chmod +x getcontent.sh
    echo "Were about to start the deciding process"
    sh ./getcontent.sh
else
    echo No
fi
sudo rm -r install.sh
sudo wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/install.sh
sudo chmod +x install.sh
