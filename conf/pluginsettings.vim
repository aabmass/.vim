"====================== Plugin's Settings ==============================
" This file has the plugins to be loaded by vundle. The settings
" for the plugins go in conf/settingsplugins.vim

""""""""""""""" ALE settings
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'python': ['black', 'isort'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\}

let g:ale_python_mypy_options='--strict-optional'
" let g:ale_c_clangformat_options='-style="{BasedOnStyle: llvm, IndentWidth: 4}"'

let g:ale_fix_on_save = 1

""""""""""""""" airline settings
" set powerline fonts true
" turn this off if the terminal doesn't support it
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

""""""""""""""" CtrlP settings
" enable these extensions. Still looking for a better way to ignore from .gitignore. 'autoignore' extension
" still scans everything
let g:ctrlp_extensions = ['buffertag', 'mixed', 'undo']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']



" this makes it so opening multiple files just puts them all
" in their own buffer, not splitting
let g:ctrlp_open_multiple_files = 'ij'


""""""""""""""" UltiSnips Settings
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"

" autocmds for using snippets from other languages
autocmd FileType javascript.jsx UltiSnipsAddFiletypes html

""""""""""""""" GitGutter settings
set updatetime=250
"" don't set any mappings (this plugin uses <leader>)
" let g:gitgutter_map_keys = 0
let g:gitgutter_eager=0

""""""""""""""" auto-pairs settings
" let g:AutoPairsFlyMode = 1

""""""""""""""" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_java_checkers = []

" language specifics
let g:syntastic_python_python_exec = '/usr/bin/python3'

""""""""""""""" javascript plugin settings
let g:javascript_enable_domhtmlcss = 1
" highlight jsx in regular .js files
let g:jsx_ext_required = 0
" Flow syntax
let g:javascript_plugin_flow = 1

""""""""""""""" vim-closetag settings
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx"

""""""""""""""" Gutentags settings
" store all the tag files in this directory to avoid
" creating tag files all over the fs
let g:gutentags_cache_dir = '~/.cache/gutentags'

" don't worry, there are defaults (SCM's) in addition to these
let g:gutentags_project_root = ['CMakeLists.txt', 'README.md', 'readme.md', 'LICENSE']

""""""""""""""" neco-ghc Settings
" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

""""""""""""""" py-docstring settings
" override default binding..
nmap <silent> <C-_> <Plug>(pydocstring)

""""""""""""""" coc.vim (autocomplete) settings
" installed extensions
let g:coc_global_extensions = ['coc-python', 'coc-json']
