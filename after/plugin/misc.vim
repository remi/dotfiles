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

" Fast save {{{
" ----------------------------------------------------------------------------------------------------
nmap <leader>w :w!<cr>
" }}}

" FuF maps {{{
" ----------------------------------------------------------------------------------------------------
map <Leader>b :FufBuffer<CR>
map <D-t> :FufFile<CR>
" }}}

" BufExplorer maps {{{
" ----------------------------------------------------------------------------------------------------
nmap <script> <silent> <Leader>e :BufExplorer<CR>
" }}}
