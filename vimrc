""""""""""""""""""""""" general config
" paste from system clipboard mappings
nmap <c-o> "*p
imap <c-o> <esc>"*pi
vmap <c-o> "*p

" tabs
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
" base options from sensible
Plugin 'tpope/vim-sensible'

" YCM completions
Plugin 'Valloric/YouCompleteMe'

" snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'terryma/vim-multiple-cursors'

" for fuzzy file searching
Plugin 'ctrlpvim/ctrlp.vim'

""""" Themeing stuffs
" downloads all/most of the colorschemes available
" this may be excessively large!
Plugin 'flazz/vim-colorschemes'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"""" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""" Themin' and Schemin'
" colorscheme monokai-chris
set background=dark    " Setting dark mode
colorscheme gruvbox

" set powerline fonts true
" turn this off if the terminal doesn't support it
let g:airline_powerline_fonts = 1

""""""""""""""" YCM Settings
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_global_ycm_extra_conf = '/home/aaron/.vim/ycm-confs/ycm_extra_conf.py'

" get rid of prompt for running ycm_extra_conf
" this presents a security risk (potentially) and could
" run malicious code
let g:ycm_confirm_extra_conf = 0

""""""""""""""" UltiSnips Settings
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"

" for more info on YCM and UltiSnips together, see:
" http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme

""""""""""""""" GitGutter settings
set updatetime=250
