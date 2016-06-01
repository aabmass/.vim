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

" mappings for relative line numbers see:
" http://stackoverflow.com/questions/20975928/moving-the-cursor-through-long-soft-wrapped-lines-in-vim/21000307#21000307
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" argwrap mappings
" w is for 'wrap'
nnoremap <silent> <leader>w :ArgWrap<cr>
