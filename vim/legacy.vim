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

" Ack.vim settings
" ----------------------------------------------------------------------------------------------------
let g:ackprg = 'rg --no-heading --color=never --column --line-number'
