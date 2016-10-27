"====================== Vundle Setup ==============================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" load the plugins from this conf file
source ~/.vim/conf/plugins.vim

"""" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"====================== Other setup ==============================
" specific settings for plugins go in this file
source ~/.vim/conf/pluginsettings.vim

" mappings go in here
source ~/.vim/conf/mappings.vim

" this doesn't include settings for plugins
source ~/.vim/conf/settings.vim

