#!/bin/bash
let i=0 # define counting variable
W=() # define working array
while read -r line; do # process file by file
    let i=$i+1
    W+=($i "$line")
done < <( ls -1 /home )
FILE=$(dialog --title "List file of directory /home" --menu "Chose one" 24 80 17 "${W[@]}" 3>&2 2>&1 1>&3) # show dialog and store output
clear
if [ $? -eq 0 ]; then # Exit with OK
    readlink -f $(ls -1 /home | sed -n "`echo "$FILE p" | sed 's/ //'`")
