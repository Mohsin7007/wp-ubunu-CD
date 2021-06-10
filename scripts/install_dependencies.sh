#!/bin/bash
apt-get update -y
apt-get install -y apache2 libapache2-mod-php php-mysql php-mbstring
apt install mysql-client-core-8.0
rm /var/www/html/index.html
sudo apt install nfs-common -y
sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport fs-2879d473.efs.eu-central-1.amazonaws.com:/ /var/www/html
grep -qxF 'fs-2879d473.efs.eu-central-1.amazonaws.com:/ /var/www/html/ efs defaults,_netdev 0 0' /etc/fstab || echo 'fs-2879d473.efs.eu-central-1.amazonaws.com:/ /var/www/html/ efs defaults,_netdev 0 0' >> /etc/fstab

