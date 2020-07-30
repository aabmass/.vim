"====================== Mappings ==============================
" paste from system clipboard mappings
nmap <c-o> "+p
imap <c-o> <esc>"+pi
vmap <c-o> "+p

" change buffers easily
nmap <c-l> :bnext!<cr>
nmap <c-h> :bprevious!<cr>
nmap <c-m-p> :CtrlPBuffer<cr>

" mappings for a.vim
map <leader>a :A!<cr>

" fzf
nmap <c-p> :Files<cr>
nmap <c-t> :Files<cr>

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

""""""""""""""""""" coc.vim (autocomplete)
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" toggle diagnostics pane
nnoremap <leader>d :CocDiagnostics<cr>
nnoremap <leader>D :lclose<cr>

" run a commond (like Ctrl-Shift-p in vscode)
nnoremap <leader>c :CocCommand<cr>

