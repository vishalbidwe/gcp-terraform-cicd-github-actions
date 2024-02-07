#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install apache2 -y
sudo apt-get install mariadb-server -y
sudo apt-get install php8.2 -y
sudo apt-get install php8.2-cli php8.2-mbstring php8.2-xml php8.2-common php8.2-curl php8.2-mysqln -y
sudo systemctl restart apache2
cd /var/www/html
sudo apt-get install wget
sudo wget https://wordpress.org/latest.tar.gz
sudo tar xzvf latest.tar.gz
sudo chown -R www-data:www-data /var/www/html/wordpress/
sudo systemctl restart apache2
