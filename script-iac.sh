#!/bin/bash

echo "Atulizando o servidor"
apt-get update
apt-get upgrade -y

echo "Instalando o Apache"
apt-get install apache2 -y

echo "Instalando o Unzip"

apt-get install unzip -y

echo "Download dos arquivos"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando os arquivos para a pasta do apache"
cd linux-site-dio-main
cp -R * /var/www/html


