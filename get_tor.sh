#!/bin/bash
i=0 # Start number {eg. i=0; 0->save link, 1->save link} || {eg2. i=3; 3->save link, 4->savev link, etc..}
while [ -d /var/lib/tor/hidden_service$i ];
do
  workjob=$(cat /var/lib/tor/hidden_service$i/hostname)
  echo -e "${workjob}" >> "/var/www/links.txt"
  i=$((i+1))
done
echo "Done"
