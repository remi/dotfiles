" vim-plugin plugins
" ----------------------------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'mileszs/ack.vim', { 'on': 'Ack' }
Plug 'vim-scripts/camelcasemotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'mattn/emmet-vim'
Plug 'tmhedberg/matchit'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-rails'
Plug 'ervandew/supertab'
Plug 'remiprev/vim-colors-solarized'
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'tpope/vim-surround'
Plug 'lukaszb/vim-web-indent', { 'for': ['html', 'javascript'] }
Plug 'vim-scripts/YankRing.vim'
call plug#end()

" Load configuration files
" ----------------------------------------------------------------------------------------------------
source $HOME/.vim/settings.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/map.vim
source $HOME/.vim/functions.vim
source $HOME/.vim/autocmd.vim
source $HOME/.vim/autocmd_ft.vim
