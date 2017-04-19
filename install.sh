#!/bin/bash

origdir=$(pwd)

### first clone this repo
git clone https://github.com/aabmass/.vim.git ~/.vim

### now clone Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

### set links for vim and neovim
ln -sf ~/.vim/conf/vimrc.vim ~/.vimrc
ln -sf ~/.vim ~/.config/nvim

### let vundle pull in deps
vim +PluginInstall +qall

### don't forget to also build the YouCompleteMe compiled portion!
