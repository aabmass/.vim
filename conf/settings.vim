"====================== General Config ==============================
let mapleader="\\"

""" tab/indent settings
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

" specific tab settings for filetypes
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype html.handlebars setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2

""" searching
set ignorecase
set smartcase

""" line numbering
set number
set relativenumber

" also, see the mappings for making gj and gk work with this

""" use the mouse
" Enable mouse use in all modes
set mouse=a

""" misc
" this should speed up changing buffers?
" https://github.com/neovim/neovim/issues/4524
set hid

" use visual bell instead of annoying one
set vb
