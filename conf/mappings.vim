"====================== Mappings ==============================
" paste from system clipboard mappings
nmap <c-o> "*p
imap <c-o> <esc>"*pi
vmap <c-o> "*p

" change buffers easily
nmap <c-l> :bnext!<cr>
nmap <c-h> :bprevious!<cr>

" mappings for a.vim
map <leader>a :A!<cr>
