#!/bin/sh

echo Hello world my name is $MY_NAME

echo Downloading tModLoader

#wget -O $MODNAME.tmod http://javid.ddns.net/tModLoader/download.php?Down=mods/$MODNAME.tmod
#wget https://github.com/tModLoader/tModLoader/releases/download/v0.11.4/tModLoader.Linux.v0.11.4.zip

curl -L https://github.com/tModLoader/tModLoader/releases/download/v0.11.4/tModLoader.Linux.v0.11.4.zip -o tModLoader.Linux.v0.11.4.zip

echo Downloading tModLoader Complete

apt-get install -y unzip

# current directory.
unzip tModLoader.Linux.v0.11.4.zip
