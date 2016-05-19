"====================== Plugin's Settings ==============================
" This file has the plugins to be loaded by vundle. The settings
" for the plugins go in conf/settingsplugins.vim

""""""""""""""" Themin' and Schemin'
" colorscheme monokai-chris
set background=dark    " Setting dark mode
colorscheme gruvbox

""""""""""""""" airline settings
" set powerline fonts true
" turn this off if the terminal doesn't support it
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0

""""""""""""""" CtrlP settings
" enable these extensions. Still looking for a better way to ignore from .gitignore. 'autoignore' extension
" still scans everything
let g:ctrlp_extensions = ['buffertag', 'mixed', 'undo']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" this makes it so opening multiple files just puts them all
" in their own buffer, not splitting
let g:ctrlp_open_multiple_files = 'ij'


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
"" don't set any mappings (this plugin uses <leader>)
"let g:gitgutter_map_keys = 0

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

" language specifics
let g:syntastic_python_python_exec = '/usr/bin/python3'

""""""""""""""" javascript plugin settings
let g:javascript_enable_domhtmlcss = 1

""""""""""""""" Gutentags settings
let g:gutentags_tagfile = ".tags"

" don't worry, there are defaults (SCM's) in addition to these
let g:gutentags_project_root = ['CMakeLists.txt', 'README.md', 'readme.md', 'LICENSE']
