i=0
s=65    # decimal ASCII "A" 
for f in *.tgz
do
    # convert to octal then ASCII character for selection tag
    files[i]=$(echo -en "\0$(( $s / 64 * 100 + $s % 64 / 8 * 10 + $s % 8 ))")
    files[i+1]="$f"    # save file name
    ((i+=2))
    ((s++))
done
whiptail --backtitle "Welcome to SEUL" --title "Restore Files" \
    --menu "Please select the file to restore" 14 40 6 "${files[@]}"
