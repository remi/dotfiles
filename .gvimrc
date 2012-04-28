" ----------------------------------------------------------------------------------------------------
" @file         .gvimrc
" @description  Gvim configuration file
" @author       Rémi Prévost (remi, exomel.com)
" vim: set fdm=marker:
" ----------------------------------------------------------------------------------------------------

" Highlight cursor line {{{
" ------------------------------------------------------------
set nocursorline
"}}}

" Transparency {{{
" ------------------------------------------------------------
set transparency=2
"}}}

" Font {{{
" ------------------------------------------------------------
set guifont=Monaco:h12
"}}}

" Colorscheme {{{
" ------------------------------------------------------------
set background=dark
let g:solarized_bold=1
let g:solarized_contrast="high"
let g:solarized_visibility="low"
colorscheme solarized
"}}}

" Fullscreen options {{{
" ------------------------------------------------------------
set fuoptions=maxvert,maxhorz
"}}}

" GUI options {{{
" ------------------------------------------------------------
set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions+=r
set guioptions-=T
"}}}

" Override MacVim.app commands {{{
" ------------------------------------------------------------
macmenu File.Open\ Tab\.\.\. key=<nop>
macmenu File.Close key=<nop>
macmenu File.New\ Tab key=<nop>
macmenu File.Save key=<nop>
macmenu File.Save\ As\.\.\. key=<nop>
noremap <D-s> <Nop>
noremap <D-w> <Nop>
noremap <D-t> <Nop>
" }}}

" Misc settings {{{
" ------------------------------------------------------------
set showtabline=0
" }}}
