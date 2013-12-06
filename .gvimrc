" Misc settings
" ------------------------------------------------------------
set showtabline=0
set nocursorline
set transparency=0
set guifont=Monaco:h12
set fuoptions=maxvert,maxhorz

" Colorscheme
" ------------------------------------------------------------
set background=dark
let g:solarized_bold=1
let g:solarized_contrast="high"
let g:solarized_visibility="normal"
let g:solarized_hitrail = 1
let g:solarized_menu = 0
colorscheme solarized

" GUI options
" ------------------------------------------------------------
set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions-=r
set guioptions-=T

" Override MacVim.app commands
" ------------------------------------------------------------
macmenu File.Open\ Tab\.\.\. key=<nop>
macmenu File.Close key=<nop>
macmenu File.New\ Tab key=<nop>
macmenu File.Save key=<nop>
macmenu File.Save\ As\.\.\. key=<nop>
noremap <D-s> <Nop>
noremap <D-w> <Nop>
noremap <D-t> <Nop>
