#!/bin/bash

echo -e "\n"
echo Installing Nala
echo -e "\n"

nala_url = "https://gitlab.com/volian/volian-archive/uploads/d00e44faaf2cc8aad526ca520165a0af/volian-archive-nala_0.2.0_all.deb"
keyring_url = "https://gitlab.com/volian/volian-archive/uploads/d9473098bc12525687dc9aca43d50159/volian-archive-keyring_0.2.0_all.deb"

sudo apt update && sudo apt install curl git wget -y

mkdir -p $HOME/Downloads
wget nala_url keyring_url -P $HOME/Downloads

sudo apt install $HOME/Downloads/volian-archive*.deb -y

sudo apt update && sudo apt install nala -y
