""""""""""""""""""""""" general config
source ~/.vim/conf/settings.vim
source ~/.vim/conf/mappings.vim

""""""""""""""""""""""" Vundle Setup
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

source ~/.vim/conf/plugins.vim

"""" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

source ~/.vim/conf/pluginsettings.vim
