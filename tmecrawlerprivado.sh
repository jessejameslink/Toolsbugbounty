#!/bin/bash
echo -e
echo -e
echo -e
echo "'########:'##::::'##:'########::'######::'########:::::'###::::'##:::::'##:'##:::::::'########:'########::";
echo "... ##..:: ###::'###: ##.....::'##... ##: ##.... ##:::'## ##::: ##:'##: ##: ##::::::: ##.....:: ##.... ##:";
echo "::: ##:::: ####'####: ##::::::: ##:::..:: ##:::: ##::'##:. ##:: ##: ##: ##: ##::::::: ##::::::: ##:::: ##:";
echo "::: ##:::: ## ### ##: ######::: ##::::::: ########::'##:::. ##: ##: ##: ##: ##::::::: ######::: ########::";
echo "::: ##:::: ##. #: ##: ##...:::: ##::::::: ##.. ##::: #########: ##: ##: ##: ##::::::: ##...:::: ##.. ##:::";
echo "::: ##:::: ##:.:: ##: ##::::::: ##::: ##: ##::. ##:: ##.... ##: ##: ##: ##: ##::::::: ##::::::: ##::. ##::";
echo "::: ##:::: ##:::: ##: ########:. ######:: ##:::. ##: ##:::: ##:. ###. ###:: ########: ########: ##:::. ##:";
echo ":::..:::::..:::::..::........:::......:::..:::::..::..:::::..:::...::...:::........::........::..:::::..::";
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
for url in $(cat $wordlist) ;do HTTP_CODE=$(curl -s https://t.me/joinchat/$url | grep "Click to" | cut -d ' ' -f3)

if [ "$HTTP_CODE" == "invited" ]; then


        echo -e "Group,User or Channel does not exist \e[36m${url} \e[0m Status  => \e[31m${HTTP_CODE} \e[0m"
        var2=$(echo "https://t.me/joinchat/$url" > valuedinvalues.txt)
else
        echo -e "Group,User or Channel exist \e[36m${url} \e[0m Status  => \e[32mGuest \e[0m"
        var1=$(echo "https://t.me/joinchat/$url" > validvalues.txt)

fi 

done
