#!/bin/bash

#1 installing certificates

sudo apt install wget ca-certificates

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'

#2 installing postgress

echo "running postgress installation"

sudo apt update
echo "done updating now installing postgresql"

sudo apt install postgresql postgresql-contrib -y

echo "checking postgress status....."

sudo systemctl status postgresql

echo "enabling postgresql"
systemctl start postgresql

sudo systemctl enable postgresql

#3 using postgress

echo "running ppostgress"
cd ~postgres/
sudo -u postgres psql

CREATE DATABASE  miniprojectdb;

\password miniprojectdb >> 'password'

\q




