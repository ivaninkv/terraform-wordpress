#!/bin/bash
sudo apt update
sudo apt install -y apache2 php libapache2-mod-php php-mysql mysql-client-core-8.0 ansible
sudo systemctl enable apache2
sudo systemctl start apache2
sudo a2enmod rewrite
sudo systemctl restart apache2
