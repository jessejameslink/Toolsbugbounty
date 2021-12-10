#!/bin/bash
echo -e
echo -e
printf "Author: Kaue Navarro\n"
echo -e
printf  "TMECRAWLER 1.0 https://github.com/kauenavarroBR\n"
echo -e
echo -e "####### Exemplo de Uso ######"
echo -e
echo -e "     tmecrawler wordlist     "
echo -e
echo -e
wordlist="$1"
validvalues=$(touch validvalues.txt)
valuedinvalues=$(touch valuedinvalues.txt)
$validvalues
$valuedinvalues
for url in $(cat $wordlist) ;do RESPONSE=$(curl -s -I "$url////?destination=https://evil.com\@innovatie.vrt.be/" | grep "evil.com" | cut -c19-26)

if [ "$RESPONSE" == "evil.com" ]; then


        echo -e "vulneravél \e[36m${url} \e[0m Status  => \e[31m${RESPONSE} \e[0m"
        var2=$(echo "$url" > validvalues.txt)
else
        echo -e "Não vulneravel \e[36m${url} \e[0m Status  => \e[32mNão Vulneravel \e[0m"
        var1=$(echo "$url" > valuedinvalues.txt)

fi 

done
