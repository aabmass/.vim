"""""""" BEGIN my edits
" Change leader to ,
let mapleader=','

" Change localleader to '\'
let maplocalleader = "\\"

" Clear search without doing :set nohlsearch
nnoremap <leader>/ :let @/ = ""<CR>

" Switch buffers with leader
nnoremap <Leader>d :bnext!<CR>
nnoremap <Leader>a :bprevious!<CR>
" Switch between the last two files
nnoremap <leader><leader> <c-^>
" Close a buffer with leader
nnoremap <leader>q :bd<CR>

" remap ; to \ and , to |
nnoremap \ ;
nnoremap \| ,

" Color theme
color desert
highlight SignColumn ctermbg=darkgrey

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
" set foldmethod=indent

" redraw only when we need to -- faster macros
set lazyredraw

" Inserts a closing curly bracket
inoremap {<CR> {<CR>}<Esc>O

" Local and global refactoring names; just call gr with the cursor on the name
function! Refactor()
    call inputsave()
    let @z=input("What do you want to rename '" . @z . "' to? ")
    call inputrestore()
endfunction
nmap gr "zyiw:call Refactor()<cr>mx:silent! norm gd<cr>[{V%:s/<C-R>//<c-r>z/g<cr>`x

" A shortcut mapping for a.vim to switch between header and source
nmap aa :A!<CR>

" Auto indent when tab is pressed in visual mode
vmap <Tab> =

" Select all with <c-a> in all modes
nmap <C-a> ggvG 
imap <C-a> <esc>ggvG 
vmap <C-a> ggvG 


" Paste and toggle paste nopaste
nmap <C-q> :set paste<cr>a<C-r>+<esc>:set nopaste<cr>
imap <C-q> <esc>:set paste<cr>a<C-r>+<esc>:set nopaste<cr>a

" Toggle Tagbar (majutsushi/tagbar) on and off
nmap tt :TagbarToggle<CR>

" Shift tab does an inverse tab
nmap <S-Tab> <<
imap <S-Tab> <C-o><<

" Easier to type ; than : for commands, but we still want ';' functionality
nnoremap ; :
nnoremap ,f ;
nnoremap ,F ,


" Fold tag (zfat) with ft
nmap ft zfat

" Copy the whole buffer into the "+ register (system clipboard)
" nmap cc gg"+yG
nmap cc :%y+<Enter>

" Copy/Paste quickly from system clipboard
nmap <C-p> "+p
imap <C-p> <ESC>"+pa

"""""""" END my_edits

"""""""" BEGIN ctags_additions

" Support for css
let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }

" A fix for javascript
let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'JavaScript',
    \ 'kinds'     : [
        \ 'o:objects',
        \ 'f:functions',
        \ 'a:arrays',
        \ 's:strings'
    \ ]
\ }
"""""""" END ctags_additions


"""""""" BEGIN YCM
" let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf = "~/.vim/ycm-confs/ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0

"""""""" END YCM


"""""""" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

"""""""" BEGIN vundle
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" original repos on GitHub
Plugin 'tpope/vim-fugitive'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'tpope/vim-ails.git'
" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
" non-GitHub repos
" Plugin 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"""""""" END vundle

"""""""" BEGIN my bundles
Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'

Plugin 'jtratner/vim-flavored-markdown'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'a.vim'
Plugin 'derekwyatt/vim-protodef'
Plugin 'FSwitch'
Plugin 'DoxygenToolkit.vim'
Plugin 'DoxyGen-Syntax'
Plugin 'qmake--syntax.vim'
Plugin 'majutsushi/tagbar'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'beyondmarc/glsl.vim'
Plugin 'MatchTag'
Plugin 'Syntastic'
Plugin 'rogeliog/Vim-Snippets'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'matthewsimo/angular-vim-snippets'
Plugin 'burnettk/vim-angular'
Plugin 'HTML5-Syntax-File'
Bundle 'lepture/vim-jinja'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-ragtag'
Plugin 'kien/ctrlp.vim'
" Plugin 'wincent/command-t'
Plugin 'airblade/vim-gitgutter'
Plugin 'matchit.zip'
" Plugin 'closetag.vim'
" Plugin 'HTML-AutoCloseTag'
Plugin 'ap/vim-css-color'
" Status bar
Plugin 'bling/vim-airline'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'lervag/vim-latex'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'django.vim'
"""""""" END my bundles

"""""""" BEGIN ultisnips (and YCM)
let g:UltiSnipsExpandTrigger       = "<c-tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Enable tabbing through list of results
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

" Expand snippet or return
let g:ulti_expand_res = 0
function! Ulti_ExpandOrEnter()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res
        return ''
    else
        return "\<return>"
endfunction

" Set <space> as primary trigger
inoremap <return> <C-R>=Ulti_ExpandOrEnter()<CR>

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"""""""" END ultisnips 

"""""""" BEGIN NERDTree 
nnoremap <leader>n :NERDTreeToggle<CR>
"""""""" END NERDTree

"""""""" BEGIN Ctrl-P
" set wildignore+=*/tmp/*,*.so,*.swp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" shortcut to start ctrlp. Corresponds to :e
let g:ctrlp_map = '<Leader>e'
let g:ctrlp_working_path_mode = 'ra'

" Ctags navigation with CtrlP
nnoremap <leader>t :CtrlPTag<cr>
"""""""" END Ctrl-P

"""""""" BEGIN airline (statusline)
" Tabline shows buffer file
let g:airline#extensions#tabline#enabled = 1

" Just show the filename (no path) in the tab
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1

set laststatus=2
"""""""" END airline (statusline)

"""""""" BEGIN Syntastic
let g:syntastic_html_tidy_exec= "/usr/local/bin/tidy"
let g:syntastic_python_python_exec = '/usr/bin/python3'
" let g:syntastic_python_checkers = ['pyflakes'] " not sure if this works
let g:syntastic_quiet_messages = { "type": "bad-continuation" }

"""""""" END Syntastic

"""""""" BEGIN Syntastic
let g:used_javascript_libs = 'jquery,angularjs'
"""""""" END Syntastic

if iCanHazVundle == 0
    echo "Installing Plugins, please ignore key map error messages"
    echo ""
    :PluginInstall
endif
"""""""" END Setting up Vundle - the vim plugin bundler

"""""""" BEGIN syntax settings
" For DoxyGen-sytnax
let mysyntaxfile='~/.vim/doxygen_load.vim'

if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" glsl syntax highlighting
autocmd BufNewFile,BufRead *.vp,*.fp,*.gp,*.vs,*.fs,*.gs,*.tcs,*.tes,*.cs,*.vert,*.frag,*.geom,*.tess,*.shd,*.gls,*.glsl set ft=glsl
" jinja
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja
