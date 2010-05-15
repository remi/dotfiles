" ----------------------------------------------------------------------------------------------------
" @file         autocmd.vim
" @description  Auto-commands
" @author       Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" Change the working path each time we switch buffers {{{
" ----------------------------------------------------------------------------------------------------
au! BufEnter * silent! lcd %:p:h
" }}}

" Move the cursor to its last location in the file {{{
" ----------------------------------------------------------------------------------------------------
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
" }}}

" We log each file opening in an external file {{{
" ----------------------------------------------------------------------------------------------------
function! LogEachFile()
	if &buftype != 'help'
		redir >> ~/.vim-local/.vimlog
			echo "(".strftime("%F %T").")  ".expand("%:p")
		redir END
	endif
endfunction
autocmd! BufReadPre * silent call LogEachFile()
" }}}

" Set tabstop, softtabstop and shiftwidth to the same value {{{
" Stolen from http://vimcasts.org/episodes/tabs-and-spaces/
" ----------------------------------------------------------------------------------------------------
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction
 
function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction
" }}}
