#!/bin/sh

echo Hello world my name is $MY_NAME

#echo Downloading Terraria
#http://terraria.org/server/terraria-server-1353.zip

echo Downloading tModLoader

#wget -O $MODNAME.tmod http://javid.ddns.net/tModLoader/download.php?Down=mods/$MODNAME.tmod
#wget https://github.com/tModLoader/tModLoader/releases/download/v0.11.4/tModLoader.Linux.v0.11.4.zip

curl -L https://github.com/tModLoader/tModLoader/releases/download/v0.11.4/tModLoader.Linux.v0.11.4.zip -o tModLoader.Linux.v0.11.4.zip

echo Downloading tModLoader Complete

ls -l

# current directory.
unzip tModLoader.Linux.v0.11.4.zip

ls -l

echo Now to build the mod.

echo pwd is:

pwd

echo checking mono installed

command -v mono

echo checking mono version

mono -v
