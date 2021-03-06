#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git build-essential python-dev exuberant-ctags -y

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/ruamy333/vimrc.git ~/vimrc
cd ~/vimrc
cp vimrc ~/.vimrc
vim +PluginInstall +qall
echo "colorscheme gruvbox" >> ~/.vimrc
rm -rf ~/vimrc
