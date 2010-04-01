" ----------------------------------------------------------------------------------------------------
" @file         autocmd.vim
" @description  Auto-commands
" @author       Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" Change the working path each time we switch buffers {{{
" ----------------------------------------------------------------------------------------------------
au BufEnter * lcd %:p:h
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
