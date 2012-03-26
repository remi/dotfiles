" ----------------------------------------------------------------------------------------------------
" @file         .vimrc
" @description  Vim configuration file
" @author       Rémi Prévost (remi, exomel.com)
" vim: set fdm=marker:
" ----------------------------------------------------------------------------------------------------

call pathogen#runtime_append_all_bundles()

runtime macros/matchit.vim

source $HOME/.vim/settings.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/map.vim
source $HOME/.vim/autocmd.vim
source $HOME/.vim/autocmd_ft.vim
source $HOME/.vim/autocmd_ruby.vim

let $LC_ALL = "fr_CA.UTF-8"
