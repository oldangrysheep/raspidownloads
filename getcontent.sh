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
    echo "https://ia801402.us.archive.org/zip_dir.php?path=/13/items/nes_games_2000_raspi.zip" >> downloads.txt
else
    echo No
fi

    echo -n "Do You want to download all dreamcast roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "https://ia801509.us.archive.org/zip_dir.php?path=/12/items/dreamcast_tings.zip" >> downloads.txt
else
    echo No
fi

    echo -n "Do You want to download all gameboy roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads/gameboy.txt
else
    echo No
fi

    echo -n "Do You want to download all gameboy advanced roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads/gba.txt
else
    echo No
fi

    echo -n "Do You want to download all gbc roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads/gbc.txt
else
    echo No
fi

    echo -n "Do You want to download all megadrive roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads/megadrive.txt
else
    echo No
fi



    echo -n "Do You want to download all Nintendo 64 roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads/n64.txt
else
    echo No
fi

    echo -n "Do You want to download all Nintendo ds roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads/nds.txt
else
    echo No
fi

    echo -n "Do You want to download all Nintendo Entertainment Sytstem (NES) Roms Y/N"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads/nes.txt
else
    echo No
fi

    echo -n "Do You want to download all Playstation 3 roms y/n? (Not Reccomended 100+ Gigabytes "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads/ps3.txt
else
    echo No
fi

    echo -n "Do You want to download all Playstation Portable roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads/psp.txt
else
    echo No
fi

    echo -n "Do You want to download all Playstaion 1 roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads/psx.txt
else
    echo No
fi

    echo -n "Do You want to download all Sega Saturn roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads/saturn.txt
else
    echo No
fi

    echo -n "Do You want to download all Super Nintendo Entertainment System (SNES) roms y/n?"

read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads/snes.txt
else
    echo No
fi

    echo -n "Do You want to download all virtual boy roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    wget https://raw.githubusercontent.com/oldangrysheep/raspidownloads/main/downloads/virtualboy.txt
else
    echo No
fi

sudo wget -i nes.txt gameboy.txt

fi
sudo unzip *.zip
exit

