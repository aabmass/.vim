"====================== Vim Plug ==============================
" This file has the plugins to be loaded by vim-plug. The settings for the
" plugins go in pluginsettings.vim

" base options from sensible and detecting indentation styles
" Plug 'tpope/vim-sensible'
" Plug 'tpope/vim-sleuth'

" auto close parenthesis, quotes, etc.
Plug 'jiangmiao/auto-pairs'

" sort stuff!
Plug 'christoomey/vim-sort-motion'

" auto close tags, too
Plug 'alvan/vim-closetag'

" switch between header and source (c/c++)
Plug 'vim-scripts/a.vim'

" Gutentags to generate tags on the go
Plug 'ludovicchabant/vim-gutentags'

" tagbar
Plug 'majutsushi/tagbar'

" Linting
Plug 'dense-analysis/ale'


" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'terryma/vim-multiple-cursors'

" for fuzzy file searching
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree'

" hard to explain this one, see github
Plug 'FooSoft/vim-argwrap'

" for LaTeX
Plug 'lervag/vimtex'

" for javascript
Plug 'pangloss/vim-javascript'

" for jsx in javascript
Plug 'mxw/vim-jsx'

"" Flow autocomplete
"Plug 'flowtype/vim-flow'

" Open browser to view markdown when opening md file
Plug 'suan/vim-instant-markdown'

" python stuff
Plug 'heavenshell/vim-pydocstring'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'Vimjas/vim-python-pep8-indent'

" glsl
Plug 'tikhomirov/vim-glsl'

" General autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

""""" Themeing stuffs
" downloads all/most of the colorschemes available
" this may be excessively large!
Plug 'flazz/vim-colorschemes'
Plug 'lifepillar/vim-solarized8'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" need fugitive for airline with git branch
Plug 'tpope/vim-fugitive'

