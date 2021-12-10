

wordlist="$1"
for i in $(cat $wordlist ); do echo "$i | $(curl --connect-timeout 0.5 $i -so - | grep -iPo '(?<=<title>)(.*)(?=</title>)')"; done


