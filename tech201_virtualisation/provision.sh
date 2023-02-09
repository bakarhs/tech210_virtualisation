#!/bin/bash

# Update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# Install nginx
sudo apt-get install nginx -y

# Enable or start Nginx
sudo systemctl enable nginx -y

# Python version downlaod
sudo apt-get install python-software-properties

# Nodejs download
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# Installing pm2
sudo npm install pm2 -g
npm install

# entering app
cd app

# Installing Nodejs
node app.js
