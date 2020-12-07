#!/bin/bash
file="teste.cfg"
count=0;
while IFS=";" read nomeTarefa dirOrigem dirDest tipoBkp agendarBkp compactarBkp gerarLog || [[ -n "$gerarLog" ]]; do #RECEBE NAS VARS OS VALORES DELIMITADOS POR ;
        count=$((count + 1));#INICIA O COUNT PARA INCREMENTAR O OPTIONS 
    options[$count]=$count") \"$nomeTarefa\"" #CONCATENA O OPTIONS  
done < $file ##END READ FILE

options=(${options[@]})

cmd=(dialog --keep-tite --menu "Select options:" 22 76 16)

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
