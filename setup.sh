#! /usr/bin/bash
read -p "hi " psswd
read -p "install conda? [y/n] " conda

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install neovim

# cred dict
mkdir ~/base
mkdir ~/base/cred
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1WOQXMCkINaDEEFATwBiU2GREdU81I_QF' -O ~/base/cred/cred.zip
unzip -p $psswd ~/base/cred/cred.zip
rm ~/base/cred/cred.zip

# conda
if [ $conda == "y" ]
then echo "you want for conda to be installes"
else echo "you don't want for conda to be installed"
fi

# cred installation
conda activate geo
pip install -e ~/base/cred

echo "DONE"
