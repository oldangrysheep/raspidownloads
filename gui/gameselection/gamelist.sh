cd /home/pi/RomDownloader/Temp/Roms/nes


files=(*.sh)

for i in $(seq 0 $((${#files[@]}-1))); do 
    echo "$i) ${files[$i]}" 
done

read -e -p "Select a file by index from the list: " -i 1 choice

# TODO validate and default choice

echo "File choice ${files[$choice]}"
