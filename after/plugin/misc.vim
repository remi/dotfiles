" CamelCaseMotion settings
" ----------------------------------------------------------------------------------------------------
noremap <silent> w <Plug>CamelCaseMotion_w
noremap <silent> b <Plug>CamelCaseMotion_b
noremap <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

onoremap <silent> w <Plug>CamelCaseMotion_w
onoremap <silent> b <Plug>CamelCaseMotion_b
onoremap <silent> e <Plug>CamelCaseMotion_e

onoremap <silent> iw <Plug>CamelCaseMotion_iw
xnoremap <silent> iw <Plug>CamelCaseMotion_iw
onoremap <silent> ib <Plug>CamelCaseMotion_ib
xnoremap <silent> ib <Plug>CamelCaseMotion_ib
onoremap <silent> ie <Plug>CamelCaseMotion_ie
xnoremap <silent> ie <Plug>CamelCaseMotion_ie

" Misc leader mappings
" ----------------------------------------------------------------------------------------------------
noremap <Leader>!d :bdelete!<CR>
noremap <Leader>d :bdelete<CR>
noremap <Leader>D :bufdo bdelete!<CR>
noremap <Leader>w :w!<cr>
