" vim-plugin plugins
" ----------------------------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

" Global plugins
Plug 'remiprev/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'vim-scripts/camelcasemotion'
Plug 'Raimondi/delimitMate'
Plug 'tmhedberg/matchit'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'

" Filetype-specific plugins
Plug 'mattn/emmet-vim', { 'for': ['html', 'eruby'] }
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'lukaszb/vim-web-indent', { 'for': ['html', 'javascript'] }
Plug 'plasticboy/vim-markdown', { 'for': ['mkd'] }
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
