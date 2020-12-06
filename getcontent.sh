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
    echo "https://ia601709.us.archive.org/zip_dir.php?path=/12/items/gameboy_games_2000_raspi.zip" >> downloads.txt
else
    echo No
fi

    echo -n "Do You want to download all gameboy advanced roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "https://ia801504.us.archive.org/zip_dir.php?path=/3/items/gba_games_2000_raspi.zip" >> downloads.txt
else
    echo No
fi

    echo -n "Do You want to download all gbc roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "https://ia801504.us.archive.org/zip_dir.php?path=/24/items/gbc_games_2000_raspi.zip"
else
    echo No
fi

    echo -n "Do You want to download all megadrive roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "https://ia801404.us.archive.org/zip_dir.php?path=/6/items/megadrive_games_2000_raspi.zip" >> downloads.txt
else
    echo No
fi



    echo -n "Do You want to download all Nintendo 64 roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "https://ia601406.us.archive.org/zip_dir.php?path=/24/items/n64_games_2000_raspi.zip" >> downloads.txt
else
    echo No
fi

    echo -n "Do You want to download all Nintendo ds roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "https://ia601500.us.archive.org/zip_dir.php?path=/25/items/nds_games_2000_raspi.zip" >> downloads.txt
else
    echo No
fi

    echo -n "Do You want to download all Playstation 3 roms y/n? (Not Reccomended 100+ Gigabytes & not playable on raspi "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "https://archive.org/download/ps-3-disc/ps3/" >> downloads.txt
else
    echo No
fi

    echo -n "Do You want to download all Playstation Portable roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "https://archive.org/download/psp_temporary/mnt/NAS/raspi/psp/" >> downloads.txt
else
    echo No
fi

    echo -n "Do You want to download all Playstaion 1 roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "https://ia801502.us.archive.org/29/items/psx_gamescollection/psx%20all%20games.zip" >> downloads.txt
else
    echo No
fi

    echo -n "Do You want to download all Sega Saturn roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "https://ia601402.us.archive.org/zip_dir.php?path=/28/items/saturn_games_2000_raspi.zip" >> downloads.txt
else
    echo No
fi

    echo -n "Do You want to download all Super Nintendo Entertainment System (SNES) roms y/n?"

read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "https://ia601508.us.archive.org/zip_dir.php?path=/5/items/snes_games_2000_raspi.zip" >> downloads.txt
else
    echo No
fi

    echo -n "Do You want to download all virtual boy roms y/n?"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "https://ia801400.us.archive.org/zip_dir.php?path=/31/items/virtualboy_games_2000_raspi.zip" >> downloads.txt
else 
    echo No
fi

sudo wget -i downloads.txt
sleep 5
7z e *.zip
sudo rm -r downloads.txt
sudo rm -r getcontent.sh

exit

