#!/bin/bash

for((i=0;i<=4;i++))
  mkdir "\var\lib\tor\hidden_service${i}"
  echo -e "HiddenServiceDir /var/lib/tor/hidden_service${i}\n" >> "\etc\tor\torrc"
  echo -e "HiddenServicePort 80 127.0.0.1:80\n" >> "\etc\tor\torrc"
done