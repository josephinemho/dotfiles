#!/usr/bin/env bash

# Install zsh
#sudo yum update -y && sudo yum -y install zsh
sudo yum -y install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y 
# Clone the zsh-syntax-highlighting plugin’s repo and copy it to the “Oh My ZSH” plugins directory.
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install termtosvg
#sudo yum install python3-pip -y
#sudo pip3 install --user termtosvg
#echo `pip3 show -f termtosvg`
#export PATH="/home/jovyan/.local/bin:$PATH"

# Install lolcat and other pretty things
sudo yum install ruby -y
sudo yum install wget -y
wget https://github.com/busyloop/lolcat/archive/master.zip
sudo yum install unzip -y
unzip master.zip
cd lolcat-master/bin
gem install lolcat
echo `echo I ❤ Databricks | lolcat -a -d 500`





# Copy source files to locations
sudo cp sources/vimrc ~/.vimrc
sudo cp sources/bash_profile ~/.bash_profile
sudo cp sources/motd.sh /etc/profile.d/motd.sh
sudo cp sources/zshrc ~/.zshrc
source ~/.bash_profile ~/etc/profile.d ~/.zshrc

