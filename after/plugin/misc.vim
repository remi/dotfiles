" CamelCaseMotion settings {{{
" ----------------------------------------------------------------------------------------------------
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

omap <silent> w <Plug>CamelCaseMotion_w
omap <silent> b <Plug>CamelCaseMotion_b
omap <silent> e <Plug>CamelCaseMotion_e

omap <silent> iw <Plug>CamelCaseMotion_iw
xmap <silent> iw <Plug>CamelCaseMotion_iw
omap <silent> ib <Plug>CamelCaseMotion_ib
xmap <silent> ib <Plug>CamelCaseMotion_ib
omap <silent> ie <Plug>CamelCaseMotion_ie
xmap <silent> ie <Plug>CamelCaseMotion_ie
" }}}

" Misc leader mappings {{{
" ----------------------------------------------------------------------------------------------------
noremap <Leader>d :bdelete<CR>
noremap <Leader>D :bufdo bdelete<CR>
noremap <Leader>w :w!<cr>
noremap <Leader>cd :cd 
noremap <Leader>e :e 
noremap <Leader>v V`]
noremap <Leader>s :vsplit<CR>
noremap <Leader>q <C-W>c<CR>
" }}}
