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
Plug 'tpope/vim-endwise'
Plug 'vim-scripts/YankRing.vim'

" Filetype-specific plugins
Plug 'mattn/emmet-vim', { 'for': ['html', 'eruby'] }
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }
Plug 'elixir-lang/vim-elixir', { 'for': ['elixir'] }
Plug 'lukaszb/vim-web-indent', { 'for': ['html', 'javascript'] }
Plug 'plasticboy/vim-markdown', { 'for': ['mkd'] }
Plug 'othree/html5.vim', { 'for': ['html', 'eruby'] }

call plug#end()

" Configuration files
" ----------------------------------------------------------------------------------------------------

" Settings
source $HOME/.vim/settings.vim

" Plugin-specific settings
source $HOME/.vim/plugins.vim

" Custom functions
source $HOME/.vim/functions.vim

" Custom mappings
source $HOME/.vim/map.vim

" Events
source $HOME/.vim/autocmd.vim
