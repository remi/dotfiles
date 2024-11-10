" Set local directory
" ----------------------------------------------------------------------------------------------------
let s:vimlocal=$HOME.'/.nvim-local'

" Activate syntax highlighting
" ----------------------------------------------------------------------------------------------------
syntax on

" Window title
" ----------------------------------------------------------------------------------------------------
let &titlestring = hostname()
set title

" Define the leader key
" ----------------------------------------------------------------------------------------------------
let mapleader = ","
let g:mapleader = ","

" Viminfo
" ----------------------------------------------------------------------------------------------------
execute "set viminfo=".'''50,<1000,s100,h,n'.s:vimlocal.'/info'

" Backups
" ----------------------------------------------------------------------------------------------------
set backup
set swapfile

execute "set backupdir=".s:vimlocal.'/backup'
execute "set directory=".s:vimlocal.'/swap'

if exists("+undofile")
  set undofile
  execute "set undodir=".s:vimlocal.'/undo'
endif

" Statusline
" ----------------------------------------------------------------------------------------------------
function! IsHelp()
  return &buftype=='help'?' (help) ':''
endfunction

function! GetName()
  return expand("%:t")==''?'<none>':substitute(expand("%:p"), getcwd() . "/", "", "g")
endfunction

set statusline=%1* %{GetName()} %3*
set statusline+=%7*%{&modified?' (modified)':' '}%3*
set statusline+=%5*%{IsHelp()}%3*
set statusline+=%6*%{&readonly?' (read-only) ':' '}%3*
set statusline+=%3*%=
set statusline+=%3*c:%4*%c  
set statusline+=%3*l:%4*%l  
set statusline+=%3*lc:%4*%L 

" Mark trailing whitespace
" ----------------------------------------------------------------------------------------------------
match Todo /\(\(\t\|\s\)\+$\)/

" Locale
" ----------------------------------------------------------------------------------------------------
let $LC_ALL = "fr_CA.UTF-8"
