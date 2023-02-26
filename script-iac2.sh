#!/bin/bash

echo "Atualizando o servidor..."
apt-get uptade
apt-get upgrade -y

echo "Instalando Apache..."
apt-get install apache2 -y

echo "Instalando unzip..."
apt-get install unzip -y

echo "Copiando o site para a pasta do Apache..."
cd /temp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/


