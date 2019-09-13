#!/bin/sh

echo Installing latest mono:
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install mono-devel

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

echo pwd is:
pwd
echo ls -l is:
ls -l

echo CD to tModLoader 
cd tModLoader
echo pwd is:
pwd
echo ls -l is:
ls -l

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
