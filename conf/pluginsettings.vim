""""""""""""""" Themin' and Schemin'
" colorscheme monokai-chris
set background=dark    " Setting dark mode
colorscheme gruvbox

""" airline settings
" set powerline fonts true
" turn this off if the terminal doesn't support it
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

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
