#!/bin/bash

# key installation
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

# install the db
sudo apt-get install mongodb-org=3.2.20 -y
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20

# start and enable database
sudo systemctl start mongod
sudo systemctl enable mongod

# changing the ip
sudo rm /etc/mongod.conf
sudo cp environment/database/mongod.conf /etc/mongod.conf

# start and enable database
sudo systemctl restart mongod
sudo systemctl enable mongod





