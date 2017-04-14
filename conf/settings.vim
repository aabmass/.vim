"====================== General Config ==============================
let mapleader="\\"

""" tab/indent settings
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set textwidth=79    " break lines when 120 characters wide"

set expandtab       " Expand TABs to spaces

" use a separate directory for swap and backup files
" this keeps annoying *.swp and ~ files away..
set backupdir=~/.vim/backup
set directory=~/.vim/swap

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

""""""""""""""" Themin' and Schemin'
" need this to enable true color support
set termguicolors

" choose light or dark background for themes not setting it
set background=dark
colorscheme gruvbox
" colorscheme solarized8_light_high

""" fonts
set guifont=Meslo\ LG\ M\ 11

" some file watchers (webpack) don't detect changes unless this is set
set backupcopy=yes
