#!/bin/bash

echo "Setting up server..."
apt-get update
apt-get upgrade -y
apt-get install unzip -y

echo "Installing Apache..."
apt-get install apache2 -y

echo "Downloading Web Application..."
cd /tmp
wget https://github.com/BagdalF/php-catalogo-cursos/archive/refs/heads/main.zip
unzip main.zip
cd php-catalogo-cursos
cp -R * /var/www/html/

echo "End."
