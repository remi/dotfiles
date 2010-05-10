" ----------------------------------------------------------------------------------------------------
" @file         autocmd.vim
" @description  Auto-commands for specific filetypes
" @author       Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" Ruby {{{
" ----------------------------------------------------------------------------------------------------
autocmd FileType ruby setl expandtab ts=2 shiftwidth=2 softtabstop=2
" }}}

" Ruby/Sinatra {{{
" ----------------------------------------------------------------------------------------------------
autocmd FileType ruby-sinatra setl expandtab ts=2 shiftwidth=2 softtabstop=2
" }}}

" QuickFix {{{
" ----------------------------------------------------------------------------------------------------
autocmd FileType qf setl scrolloff=0 cursorline
autocmd FileType qf noremap <CR> <CR>
" }}}

" CSS {{{
" ----------------------------------------------------------------------------------------------------
"autocmd FileType css inoremap <buffer> ;; {<CR><CR>}<ESC>ki<TAB>
" }}}
