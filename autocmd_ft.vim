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
" }}}

" Ruby {{{
" ----------------------------------------------------------------------------------------------------
autocmd FileType ruby noremap <D-r> :!/Users/remi/.rvm/rubies/ruby-1.8.7-p174/bin/ruby %<CR>
autocmd FileType ruby setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType eruby setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType eruby inoremap ;er <%  %><Esc>hhi
autocmd FileType eruby inoremap ;ee <%=  %><Esc>hhi
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
