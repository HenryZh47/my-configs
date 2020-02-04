#!/bin/bash

# Script to setup my vim configuration

# Clone Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copy the content of my-vimrc to ~/.vimrc
VIMRC=$HOME/.vimrc
if test -f "$VIMRC"; then
    echo -e "\e[36mFind existing vimrc and move it to .vimrc-backup\e[0m"
    mv $HOME/.vimrc $HOME/.vimrc-backup
    sleep 3
fi
cp ./my-vimrc $HOME/.vimrc

# Install vundle packages
vim +PluginInstall +qall
echo -e "\e[36mFinished install vundle packages!\e[0m"
sleep 3

# Install YouCompleteMe
echo -e "\e[36mInstall YouCompleteMe dependencies from apt...\e[0m"
sleep 3
sudo apt-get install build-essential cmake python3-dev
echo -e "\e[36mFinished install YouCompleteMe dependencies, install package\e[0m"
sleep 3
cd $HOME/.vim/bundle/youcompleteme
python3 install.py --clang-completer

# Finish
echo -e "\e[36mInstallation finished! Check if there's any error messages.\e[0m"
echo -e "\e[36mEnjoy!\e[0m"
