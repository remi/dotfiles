" ----------------------------------------------------------------------------------------------------
" @file         .gvimrc
" @description  Gvim configuration file
" @author       Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" On met la ligne du curseur en surbrillance {{{
" ------------------------------------------------------------
set nocursorline
"}}}

" Transparence {{{
" ------------------------------------------------------------
set transp=20
set transp=10
set transp=5
"set transp=2
"}}}

" Police {{{
" ------------------------------------------------------------
set guifont=Monaco:h12
"}}}

" Schéma de couleur {{{
" ------------------------------------------------------------
colorscheme ir_black
"}}}

" Options 'fullscreen' {{{
" ------------------------------------------------------------
set fuoptions=maxvert,maxhorz
"}}}

" Options de l’interface {{{
" ------------------------------------------------------------
set guioptions-=L
set guioptions-=l
set guioptions+=R
set guioptions-=r 
set guioptions-=T
"}}}

macmenu File.Open\ Tab\.\.\. key=<nop>
macmenu File.Close key=<nop>
macmenu File.New\ Tab key=<nop>
noremap <D-w> :bdelete<CR>
noremap <D-t> :CommandT<CR>
set showtabline=1
