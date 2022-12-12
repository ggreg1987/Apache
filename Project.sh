#!/bin/bash

echo "Starting"

echo "Atualizando o servidor..."
apt update
apt upgrade -y
apt install apache2 unzip -y

cd /tmp
wget https://github.com/ggreg1987/contacts-capgemini/archive/refs/heads/main.zip
echo "download backend contacts-capgemini"
unzip main.zip
cd contacts-capgemini-main
cp -R * /var/www/html/
