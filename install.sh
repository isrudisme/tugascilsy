#!/bin/bash

#install apache 2 php php-mysql
sudo apt-get update
sudo apt-get install -y apache2 php php-mysql

#install mysql
sudo apt-get install -y mysql-server

#masuk ke mysql dan membuat user devopscilsy
sudo mysql -u root -e "CREATE USER 'devopscilsy'@'localhost' IDENTIFIED BY '1234567890'"

#memberi akses ke user devopscilsy
sudo mysql -u root -e "grant all privileges on *.* to 'devopscilsy'@'localhost'"

#membuat databse sosmed
sudo mysql -u devopscilsy -p1234567890 -e "create database dbsosmed"

#download applikasi dari git
wget https://github.com/sdcilsy/sosial-media/archive/master.zip

#install unzip
sudo apt-get install unzip
unzip master.zip

#menghapus index.html, meniban isinya dengan folder sosial-media-master
sudo rm /var/www/html/* 
sudo mv sosial-media-master/* /var/www/html/

#import DB
cd /var/www/html/
sudo mysql -u devopscilsy -p1234567890 dbsosmed < dump.sql
