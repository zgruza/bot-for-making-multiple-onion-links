# Before run
You must apply permissions to all scripts with .sh extension.
You can do that in this way: <br />``` chmod +x /path/to/make-get_tor.sh  ```

## Make_tor.sh
Before you run this script edit number in: 
#### for((i=0;i<=4;i++))
This script make multiple clones [Links] of your Hidden service

## Get_tor.sh
This script save all new generated links into one file in ```/var/www/links.txt ```

# Troubleshooting
If you have problems with run script make_tor.sh you can try: <br />
``` sudo apt-get install dos2unix ``` <br />
``` dos2unix FILENAME``` <br />
``` unix2dos FILENAME``` <br />
