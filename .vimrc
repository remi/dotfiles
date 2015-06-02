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
Plug 'vim-scripts/YankRing.vim'
Plug 'ervandew/supertab'

" Filetype-specific plugins
Plug 'mattn/emmet-vim', { 'for': ['html', 'eruby', 'ruby'] }
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }
Plug 'elixir-lang/vim-elixir', { 'for': ['elixir'] }
Plug 'lukaszb/vim-web-indent', { 'for': ['html', 'javascript'] }
Plug 'plasticboy/vim-markdown', { 'for': ['mkd'] }
Plug 'othree/html5.vim', { 'for': ['html', 'eruby'] }
Plug 'kchmck/vim-coffee-script', { 'for': ['coffee'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript'] }

call plug#end()

" Configuration files
" ----------------------------------------------------------------------------------------------------

" File types
source $HOME/.vim/config/filetype.vim

" Settings
source $HOME/.vim/config/global-settings.vim

" Plugin-specific settings
source $HOME/.vim/config/plugin-settings.vim

" Custom functions
source $HOME/.vim/config/functions.vim

" Custom commands
source $HOME/.vim/config/commands.vim

" Custom mappings
source $HOME/.vim/config/mappings.vim

" Events
source $HOME/.vim/config/events.vim
