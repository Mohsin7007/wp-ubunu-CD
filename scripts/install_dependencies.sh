#!/bin/bash
apt-get update -y
apt-get install -y apache2 libapache2-mod-php php-mysql php-mbstring
rm /var/www/html/index.html
