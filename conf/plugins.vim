"====================== Vundle Plugins ==============================
" This file has the plugins to be loaded by vundle. The settings
" for the plugins go in pluginsettings.vim

"""" Install plugins with vundle here
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" base options from sensible and detecting indentation styles
Plugin 'tpope/vim-sensible'
" Plugin 'tpope/vim-sleuth'

" auto close parenthesis, quotes, etc.
Plugin 'jiangmiao/auto-pairs'

" auto close tags, too
Plugin 'alvan/vim-closetag'

" switch between header and source (c/c++)
Plugin 'a.vim'

" YCM completions
Plugin 'Valloric/YouCompleteMe'

" Gutentags to generate tags on the go
Plugin 'ludovicchabant/vim-gutentags'

" tagbar
Plugin 'majutsushi/tagbar'

" Syntastic syntax checking
" Plugin 'scrooloose/syntastic'

" snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'terryma/vim-multiple-cursors'

" for fuzzy file searching
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

" hard to explain this one, see github
Plugin 'FooSoft/vim-argwrap'

" for LaTeX
Plugin 'lervag/vimtex'

" for TypeScript
Plugin 'leafgarland/typescript-vim'

" for javascript
Plugin 'pangloss/vim-javascript'

" for jsx in javascript
Plugin 'mxw/vim-jsx'

" for mustache templates (ember)
Plugin 'mustache/vim-mustache-handlebars'

" for Haskell
Plugin 'neovimhaskell/haskell-vim'  " syntax + indentation
Plugin 'eagletmt/neco-ghc'          " autocompletion

" Open browser to view markdown when opening md file
Plugin 'suan/vim-instant-markdown'

" for java autocompletion
Plugin 'artur-shaik/vim-javacomplete2'

" python stuff
Plugin 'heavenshell/vim-pydocstring'
Bundle "lepture/vim-jinja"
" Plugin 'klen/python-mode'
"
" glsl
Plugin 'tikhomirov/vim-glsl'

""""" Themeing stuffs
" downloads all/most of the colorschemes available
" this may be excessively large!
Plugin 'flazz/vim-colorschemes'
Plugin 'lifepillar/vim-solarized8'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fholgado/minibufexpl.vim'
