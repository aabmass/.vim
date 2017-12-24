#!/bin/bash

origdir=$(pwd)

### first clone this repo
git clone https://github.com/aabmass/.vim.git ~/.vim

### set links for vim and neovim
ln -sf ~/.vim/conf/vimrc.vim ~/.vimrc
ln -sf ~/.vim ~/.config/nvim

### don't forget to also build the YouCompleteMe compiled portion!
