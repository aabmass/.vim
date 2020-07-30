"====================== General Config ==============================
let mapleader="\\"

""" tab/indent settings
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set textwidth=80    " break lines when 120 characters wide"

set formatoptions=1cjnq     " formatoptions. See :help formatoptions and
                            " :help fo-table . These change how vim auto
                            " formats text during editing

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
" not sure if I like relativenumbers still...
" set relativenumber

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
" run silent! in case the theme isn't installed -- don't want
" an error to be thrown and require user to press enter
silent! colorscheme gruvbox
" colorscheme solarized8_light_high

""" fonts
set guifont=Meslo\ LG\ M\ 11

" some file watchers (webpack) don't detect changes unless this is set
set backupcopy=yes

""" recommended for coc.vim (autocomplete)
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

