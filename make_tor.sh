#!/bin/bash

buff_dir='./'

num_test='^[0-9]+$'
if ! [[ $1 =~ $num_test ]];
then
    echo "Argument not a number!" >&2
    exit
fi

for((i=0;i<$1;i++)) # == 5 new links
do
  echo -e "HiddenServiceDir /var/lib/tor/hidden_service${i}" >> "/etc/tor/torrc"
  echo -e "HiddenServicePort 80 127.0.0.1:80\n" >> "/etc/tor/torrc"
done
chmod 700 -R /var/lib/tor
chmod 700 -R /var/lib/tor/*
service tor reload
echo "Done"

echo "$1" > ${buff_dir}prev_arg
