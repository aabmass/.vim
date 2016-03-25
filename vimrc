""""""""""""""""""""""" Some settings
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces



""""""""""""""""""""""" Vundle Setup
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

"""" Install plugins here
Plugin 'tpope/vim-sensible'
Plugin 'Valloric/YouCompleteMe'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


""""""""""""""" YCM Settings
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
