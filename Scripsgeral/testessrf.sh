#!/bin/bash
url="$1"
interact="$2"
type="$3"

#domain=$(echo $url | cut -d "/" -f3)

resposta=$(echo $2 | cut -d "." -f1 | rev )

HTTP_CODE=$(curl -s $url)

if [ "$type" == "burp" ];then
interactok=$(echo $HTTP_CODE | grep "$resposta" | cut -d ">" -f5 | cut -d "<" -f1)
else
interactok=$(echo $HTTP_CODE | grep "$resposta" | cut -d ">" -f4 | cut -d "<" -f1)
fi

#echo "$interactok"
if [ "$interactok" == "$resposta" ]; then


       echo -e "SSRF \e[36m${url} \e[0m " | notify -discord-username testessrf


fi

