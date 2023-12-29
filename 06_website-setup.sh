#!/bin/bash

sudo apt-get update > /dev/null

sudo apt-get install apache2 unzip -y >/dev/null


sudo mkdir -p /root/tmp/

wget -p /root/tmp/ https://www.tooplate.com/zip-templates/2132_clean_work.zip

unzip /root/tmp  2132_clean_work.zip > /dev/null

sudo cp -r /root/tmp/2132_clean_work/* /var/www/html/
sudo service apache2 status

ls /var/www/html/

rm -rf /root/tmp

echo "script execution is done"


