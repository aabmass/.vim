" Install vim-plug if its missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" load the plugins from this conf file
source ~/.vim/conf/plugins.vim

" Initialize plugin system
call plug#end()

"====================== Other setup ==============================
" specific settings for plugins go in this file
source ~/.vim/conf/pluginsettings.vim

" mappings go in here
source ~/.vim/conf/mappings.vim

" this doesn't include settings for plugins
source ~/.vim/conf/settings.vim

