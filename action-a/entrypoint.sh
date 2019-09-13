#!/bin/sh

echo Hello world my name is $MY_NAME

echo checking mono installed
command -v mono
echo checking mono version
mono -V

echo pwd is:
pwd
echo ls -l is:
ls -l

echo CD to Home
cd $HOME
echo pwd is:
pwd
echo ls -l is:
ls -l

echo Downloading Terraria Server
curl -L http://terraria.org/server/terraria-server-1353.zip -o TerrariaServer.zip

unzip ./TerrariaServer.zip -d ./TerrariaServer
mkdir tModLoader
mv TerrariaServer/1353/Linux/* ./tModLoader

echo Downloading tModLoader
curl -L https://github.com/tModLoader/tModLoader/releases/download/v0.11.4/tModLoader.Linux.v0.11.4.zip -o tModLoader.Linux.v0.11.4.zip
unzip tModLoader.Linux.v0.11.4.zip -d ./tModLoader

echo Downloading ModCompile
curl -L https://github.com/tModLoader/tModLoader/releases/download/v0.11.4/ModCompile_XNA.zip -o ModCompile.zip
mkdir tModLoader/ModCompile
unzip ModCompile.zip -d ./tModLoader/ModCompile

echo Upgrade to tModLoader-mono
cp ./tModLoader/tModLoader-mono ./tModLoader/tModLoaderServer

echo CD to GITHUB_WORKSPACE 
cd $GITHUB_WORKSPACE
echo pwd is:
pwd
echo ls -l is:
ls -l
echo Now to build the mod:
$HOME/tModLoader/tModLoaderServer -tmlsavedirectory ../ModLoader -build $GITHUB_WORKSPACE

cd ModLoader/Mods
echo pwd is:
pwd
echo ls -l is:
ls -l
