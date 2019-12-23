#!/bin/bash

buff_dir='./'

num_test='^[0-9]+$'
if [ $# -eq 0 ]
then
	i=$(cat ${buff_dir}prev_arg)
else
	if ! [[ $1 =~ $num_test ]];
	then
		echo "Argument not a number!" >&2
		exit
	fi
	i=$1
fi

while [ -d /var/lib/tor/hidden_service$i ];
do
  workjob=$(cat /var/lib/tor/hidden_service$i/hostname)
  echo -e "${workjob}" >> "/var/www/links.txt"
  i=$((i+1))
done
echo "Done"
