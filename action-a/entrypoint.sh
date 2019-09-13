#!/bin/sh -l

echo Hello world my name is $MY_NAME

echo Downloading tModLoader

#wget -O $MODNAME.tmod http://javid.ddns.net/tModLoader/download.php?Down=mods/$MODNAME.tmod
wget https://github.com/tModLoader/tModLoader/releases/download/v0.11.4/tModLoader.Linux.v0.11.4.zip

echo Downloading tModLoader Complete

sudo apt-get install unzip

# current directory.
unzip tModLoader.Linux.v0.11.4.zip