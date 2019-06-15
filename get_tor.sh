#!/bin/bash
i=0
while [ -d /var/lib/tor/hidden_service$i ];
do
   mkdir "/var/www/${i}"
  workjob=$(cat /var/lib/tor/hidden_service$i/hostname)
  echo -e "${workjob}" >> "/var/www/links.txt"
  i=$((i+1))
done
echo "Done"