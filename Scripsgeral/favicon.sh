#!/bin/bash
read -p "Enter Favicon URL: " fav
##hash
hash=$(curl -s -L -k $fav | python3 -c 'import mmh3,sys,codecs; print(mmh3.hash(codecs.encode(sys.stdin.buffer.read(),"base64")))')
##found
echo Generated Hash:$hash
shodan search http.favicon.hash:$hash
shodan search http.favicon.hash:$hash --fields ip_str,port --separator " " | awk '{print $1 ":" $2}'
