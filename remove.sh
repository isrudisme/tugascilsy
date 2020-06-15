#!/bin/bash
apt-get remove -y apache2 php php-mysql
apt-get purge  -y apache2 php php-mysql
apt-get autoremove -y  apache2 php php-mysql


apt-get remove -y mysql-server
apt-get purge  -y mysql-server
apt-get autoremove -y mysql-server

apt-get remove -y unzip
rm -r sosial-media-master
rm -r master.zip
