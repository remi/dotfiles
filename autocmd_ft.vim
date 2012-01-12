" ----------------------------------------------------------------------------------------------------
" @file         autocmd.vim
" @description  Auto-commands for specific filetypes
" @author       Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" HTML, CSS & Javascript {{{
" ----------------------------------------------------------------------------------------------------
autocmd FileType html setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType css setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType css inoremap !! !important
autocmd FileType javascript setl expandtab ts=2 shiftwidth=2 softtabstop=2
augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=syntax
augroup END
" }}}

" Ruby {{{
" ----------------------------------------------------------------------------------------------------
autocmd FileType ruby noremap <D-r> :!/Users/remi/.rvm/bin/rvm-auto-ruby %<CR>
autocmd FileType ruby setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType eruby setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType eruby inoremap ;er <%  %><Esc>hhi
autocmd FileType eruby inoremap ;ee <%=  %><Esc>hhi
autocmd FileType haml  inoremap ## #{}<Esc>hhi
" }}}

" JavaScript {{{
" ----------------------------------------------------------------------------------------------------
autocmd FileType javascript inoremap <buffer> ;fu function() {<CR>}<Esc>V<<Esc>O
autocmd FileType javascript inoremap <buffer> ;cl console.log();<Esc>hi
autocmd FileType javascript inoremap <buffer> ;al alert();<Esc>hi
autocmd FileType javascript inoremap <buffer> ;rf return false;<Esc>
" }}}

" Ruby/Sinatra {{{
" ----------------------------------------------------------------------------------------------------
autocmd FileType ruby-sinatra setl expandtab ts=2 shiftwidth=2 softtabstop=2
" }}}

" QuickFix {{{
" ----------------------------------------------------------------------------------------------------
autocmd FileType qf setl scrolloff=0 cursorline
autocmd FileType qf noremap <CR> <CR>
" }}}

" Git {{{
" ----------------------------------------------------------------------------------------------------
au BufReadPost COMMIT_EDITMSG exe "normal gg"
" }}}
