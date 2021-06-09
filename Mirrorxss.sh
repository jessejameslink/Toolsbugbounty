#!/bin/bash
echo -e
echo -e
echo -e
echo "'##::::'##:'####:'########::'########:::'#######::'########::'##::::'##::'######:::'######::";
echo " ###::'###:. ##:: ##.... ##: ##.... ##:'##.... ##: ##.... ##:. ##::'##::'##... ##:'##... ##:";
echo " ####'####:: ##:: ##:::: ##: ##:::: ##: ##:::: ##: ##:::: ##::. ##'##::: ##:::..:: ##:::..::";
echo " ## ### ##:: ##:: ########:: ########:: ##:::: ##: ########::::. ###::::. ######::. ######::";
echo " ##. #: ##:: ##:: ##.. ##::: ##.. ##::: ##:::: ##: ##.. ##::::: ## ##::::..... ##::..... ##:";
echo " ##:.:: ##:: ##:: ##::. ##:: ##::. ##:: ##:::: ##: ##::. ##::: ##:. ##::'##::: ##:'##::: ##:";
echo " ##:::: ##:'####: ##:::. ##: ##:::. ##:. #######:: ##:::. ##: ##:::. ##:. ######::. ######::";
echo "..:::::..::....::..:::::..::..:::::..:::.......:::..:::::..::..:::::..:::......::::......:::";
echo -e
echo -e
printf "Author: Kaue Navarro\n"
echo -e
printf  "MIRRORXSS 1.0 https://github.com/kauenavarroBR\n"
echo -e
echo -e "####### Exemplo de Uso ######"
echo -e
echo -e "     ./mirrorxss.sh url wordlist     "
echo -e
echo -e

oldIFS=$IFS 
IFS=$'\n'
url="$1"
wordlist="$2"
Renewlist=$(rm xssvalid.txt xssinvalid.txt)
xssvalid=$(touch xssvalid.txt)
xssinvalid=$(touch xssinvalid.txt)

sleep 2

for payload in $(cat $wordlist) ;do HTTP_CODE=$(curl -s --path-as-is --insecure "$url$payload" | tac| tac| grep -qa "$payload" && echo -e "1" || echo -e "2" )

var="$HTTP_CODE"


case "$HTTP_CODE" in
    "1")
       echo -e "XSS \e[31m${url}${payload} \e[0m Status http => \e[31m${HTTP_CODE} \e[0m"
        var1=$(echo "$url$payload" >> xssvalid.txt)
    ;;
    "2")
        echo -e " \e[32m${url}${payload} \e[0m Status http => \e[32m${HTTP_CODE} \e[0m"
        var2=$(echo "$urlpayload"  >> xssinvalid.txt)
    ;;
esac
done
var6=$(cat xssvalid.txt | aquatone)
var3=$(wc -l xssvalid.txt)
var4=$(wc -l xssinvalid.txt)
echo -e
echo -e "Were found XSS VALID \e[36m${var3}\e[0m  XSS INVALID \e[36m${var4}\e[0m"


IFS=$old_IFS 
