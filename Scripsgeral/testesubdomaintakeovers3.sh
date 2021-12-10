#!/bin/bash
wordlist="$1"
for url in $(cat $wordlist);
do curl  $url echo "$url" -s | grep -E -q "<Code>NoSuchBucket</Code>|<li>Code: NoSuchBucket</li>" && echo -e "\e[32mSubdomain takeover may be possible\e[0m $url" || echo -e "\e[31mSubdomain takeover is not possible\e[0m";done

