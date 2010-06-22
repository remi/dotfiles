" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

inoremap <buffer> ;fu function() {<CR>}<Esc>V<<Esc>O
inoremap <buffer> ;cl console.log();<Esc>hi
inoremap <buffer> ;al alert();<Esc>hi
inoremap <buffer> ;rf return false;<Esc>
