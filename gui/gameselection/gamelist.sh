i=0
s=65    # decimal ASCII "A" 
for f in *.tgz
do

done

result=$(whiptail-command 3>&2 2>&1 1>&3-)

((index = 2 * ( $( printf "%d" "'$result" ) - 65 ) + 1 ))
