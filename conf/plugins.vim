"====================== Vundle Plugins ==============================
" This file has the plugins to be loaded by vundle. The settings
" for the plugins go in pluginsettings.vim

"""" Install plugins with vundle here
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" base options from sensible
Plugin 'tpope/vim-sensible'

" auto close parenthesis, quotes, etc.
Plugin 'jiangmiao/auto-pairs'

" switch between header and source (c/c++)
Plugin 'a.vim'

" YCM completions
Plugin 'Valloric/YouCompleteMe'

" snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'terryma/vim-multiple-cursors'

" for fuzzy file searching
Plugin 'ctrlpvim/ctrlp.vim'

" for LaTeX
Plugin 'lervag/vimtex'

" for TypeScript
Plugin 'leafgarland/typescript-vim'

""""" Themeing stuffs
" downloads all/most of the colorschemes available
" this may be excessively large!
Plugin 'flazz/vim-colorschemes'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
