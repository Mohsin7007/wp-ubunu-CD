#!/bin/bash
apt-get update -y
apt-get install -y apache2 libapache2-mod-php php-mysql php-mbstring 

mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport fs-2879d473.efs.eu-central-1.amazonaws.com:/ /var/www/html/
