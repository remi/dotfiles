" ----------------------------------------------------------------------------------------------------
" @file         .vimrc
" @description  Vim configuration file
" @author       Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

source $HOME/.vim/settings.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/map.vim
source $HOME/.vim/autocmd.vim
source $HOME/.vim/autocmd_ft.vim
