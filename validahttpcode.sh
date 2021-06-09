#!/bin/bash
echo -e
echo -e
echo -e

echo "'##::::'##::::'###::::'##:::::::'####:'########:::::'###:::::::'##::::'##:'########:'########:'########:::'######:::'#######::'########::'########:";
echo " ##:::: ##:::'## ##::: ##:::::::. ##:: ##.... ##:::'## ##:::::: ##:::: ##:... ##..::... ##..:: ##.... ##:'##... ##:'##.... ##: ##.... ##: ##.....::";
echo " ##:::: ##::'##:. ##:: ##:::::::: ##:: ##:::: ##::'##:. ##::::: ##:::: ##:::: ##::::::: ##:::: ##:::: ##: ##:::..:: ##:::: ##: ##:::: ##: ##:::::::";
echo " ##:::: ##:'##:::. ##: ##:::::::: ##:: ##:::: ##:'##:::. ##:::: #########:::: ##::::::: ##:::: ########:: ##::::::: ##:::: ##: ##:::: ##: ######:::";
echo ". ##:: ##:: #########: ##:::::::: ##:: ##:::: ##: #########:::: ##.... ##:::: ##::::::: ##:::: ##.....::: ##::::::: ##:::: ##: ##:::: ##: ##...::::";
echo ":. ## ##::: ##.... ##: ##:::::::: ##:: ##:::: ##: ##.... ##:::: ##:::: ##:::: ##::::::: ##:::: ##:::::::: ##::: ##: ##:::: ##: ##:::: ##: ##:::::::";
echo "::. ###:::: ##:::: ##: ########:'####: ########:: ##:::: ##:::: ##:::: ##:::: ##::::::: ##:::: ##::::::::. ######::. #######:: ########:: ########:";
echo ":::...:::::..:::::..::........::....::........:::..:::::..:::::..:::::..:::::..::::::::..:::::..::::::::::......::::.......:::........:::........::";

echo -e
echo -e
printf "Author: Kaue Navarro\n"
echo -e
printf  "VALID HTTPCODE 1.0 https://github.com/kauenavarroBR\n"
echo -e
echo -e "####### Exemplo de Uso ######"
echo -e
echo -e "     validaopenredirect wordlist     "
echo -e
echo -e
wordlist="$1"
valid301=$(touch valid301.txt)
vadid302=$(touch valid302.txt)
valid307=$(touch valid307.txt)
valid308=$(touch valid308.txt)
valid404=$(touch valid404.txt)

$valid301
$valid302
$valid307
$valid308
$valid404

for url in $(cat $wordlist) ;do HTTP_CODE=$(curl -s -I $url | head -1 | cut -d ' '  -f2)


case "$HTTP_CODE" in
    "301")
       echo -e "HOST \e[36m${url} \e[0m Status http => \e[32m${HTTP_CODE} \e[0m"
        var1=$(echo "$url" >> valid301.txt)
    ;;
    "302")
       echo -e "HOST \e[36m${url} \e[0m Status http => \e[32m${HTTP_CODE} \e[0m"
        var2=$(echo "$url" >> valid302.txt)
    "308")
        echo -e "HOST \e[36m${url} \e[0m Status http => \e[32m${HTTP_CODE} \e[0m"
        var3=$(echo "$url" >> valid308.txt)
    ;;
    ;;
    "307")
        echo -e "HOST \e[36m${url} \e[0m Status http => \e[32m${HTTP_CODE} \e[0m"
        var4=$(echo "$url" >> valid307.txt)
    ;;
    "404")
        HOST=$(host $url)
        echo -e "HOST \e[36m${url} \e[0m Status http => \e[32m${HTTP_CODE} \e[0m $HOST"
        var5=$(echo "$url" >> valid404.txt)
    ;;
     
    *)
        echo -e "HOST \e[36m${url} \e[0m Status http => \e[31m${HTTP_CODE} \e[0m"
        var6=$(echo "$url" >> outhers.txt)
    ;;
esac

done

var1=$(wc -l valid301.txt)
var2=$(wc -l valid302.txt)
var3=$(wc -l valid307.txt)
var4=$(wc -l valid308.txt)
var5=$(wc -l valid404.txt)
var6=$(wc -l outhers.txt)
echo -e
echo -e "Were found 301 \e[36m${var1}\e[0m  302 \e[36m${var2}\e[0m  307\e[36m${var3}\e[0m 308\e[36m${var4}\e[0m 404\e[36m${var5}\e[0m valid  and  outhers \e[32m${var6}\e[0m invalid"

