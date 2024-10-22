#!/usr/bin/env bash
# Created by: Yuri Gabutero
# Created on: Sept 2024
# AWS Debian Linux .dotfiles and setup script

sudo apt update
sudo apt upgrade -y

# common programs
sudo apt remove w3m -y
sudo apt install gh -y
sudo apt install stow -y

# install NeoVim from source
mkdir temp
cd temp
sudo apt-get install ninja-build gettext cmake unzip curl build-essential -y
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ..
cd ..
sudo rm -r ./temp

# install languages
curl -fsSL https://bun.sh/install | bash
sudo apt install -y default-jdk

# copy over the scripted folder into the home directory
cp -r ./scripts/ ~/

# create folder structure
mkdir ~/ICS4U
mkdir ~/ICS4U/Unit2
mkdir ~/ICS4U/Unit2/Unit2-01
mkdir ~/ICS4U/Unit2/Unit2-02
mkdir ~/ICS4U/Unit2/Unit2-03
mkdir ~/ICS4U/Unit2/Unit2-04
mkdir ~/ICS4U/Unit2/Unit2-05
mkdir ~/ICS4U/Unit2/Unit2-06
mkdir ~/ICS4U/Unit2/Unit2-07
mkdir ~/ICS4U/Unit2/Unit2-08
mkdir ~/ICS4U/Unit2/Unit2-09
mkdir ~/ICS4U/Unit2/Unit2-10
# ...

# reboot
echo ---
echo rebooting ...
echo ---
sudo reboot now