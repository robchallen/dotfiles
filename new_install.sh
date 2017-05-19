#!/bin/bash  

# setup node and how2
apt-get install -y nodejs npm
ln -s /usr/bin/nodejs /usr/bin/node
npm install -g how2

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# you complete me vim dependencies
apt-get install -y build-essential cmake
apt-get install -y python-dev python3-dev
