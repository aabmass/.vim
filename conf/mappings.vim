"====================== Mappings ==============================
" paste from system clipboard mappings
nmap <c-o> "*p
imap <c-o> <esc>"*pi
vmap <c-o> "*p

" change buffers easily
nmap <c-l> :bnext!<cr>
nmap <c-h> :bprevious!<cr>
nmap <c-m-p> :CtrlPBuffer<cr>

" mappings for a.vim
map <leader>a :A!<cr>

" nerdtree mappings
map <leader>p :NERDTreeToggle<cr>

" mappings for tagbar
nmap <leader>t :TagbarToggle<cr>
