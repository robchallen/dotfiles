#!/bin/bash  

# setup node and how2
sudo apt-get install -y nodejs npm
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo npm install -g how2

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# in vim run :PlugUpdate


# you complete me vim dependencies
sudo apt-get install -y build-essential cmake
sudo apt-get install -y python-dev python3-dev
cd ~/.vim/plugged/YouCompleteMe
./install.py

# google-drive-ocamlfuse pam mount
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get update
sudo apt-get install google-drive-ocamlfuse
google-drive-ocamlfuse
# need to execute google-drive-ocamlfuse for authorisation
sudo apt-get install libpam-mount 
sudo cp etc.security.pam_mount.conf.xml /etc/security/pam_mount.conf.xml
sudo cp usr.local.bin.gdfuse /usr/local/bin/gdfuse

# java 9
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java9-installer
sudo apt-get install oracle-java9-set-default

