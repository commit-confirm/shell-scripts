#!/bin/bash
# Example (printf causes unknown %, replace for echo with printf to see result)
# Resources;
# https://unix.stackexchange.com/questions/355217/return-the-output-of-a-command-into-an-associative-array/355221
# https://stackoverflow.com/questions/20805782/build-an-associative-array-from-an-input-data
# https://bash.cyberciti.biz/guide/$IFS

declare -A IP_PORT

while IFS=" " read -p "Enter list of IPs and press (ctrl + D) to exit: `echo $'\n> '`" IP PORT
#echo "$IP $PORT"
do
    IP_PORT["$IP"]="$PORT"
done

for INDEX_IP in ${!IP_PORT[@]}; do
	echo "The IP key: $INDEX_IP  -> Maps to the Port value: ${IP_PORT[$INDEX_IP]}"
done
