" ----------------------------------------------------------------------------------------------------
" @file         plugins.vim
" @description  Plugins settings
" @author       Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" NERDTree settings {{{
" ----------------------------------------------------------------------------------------------------
map <Leader>, :NERDTreeToggle %:p:h<cr>
map <Leader>f :NERDTreeFind<cr>
map <Leader>v :NERDTree /Volumes/<cr>
map <Leader>c :NERDTree
let NERDTreeBookmarksFile=expand('$HOME').'/.vim-local/.NERDTreeBookmarks'
let NERDTreeShowHidden=1
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore = ['\~$', '^\._', '^\.git$']
autocmd BufEnter NERD_tree_* set scrolloff=0 cursorline
autocmd BufLeave NERD_tree_* set scrolloff=4 nocursorline
" }}}

" Taglist settings {{{
" ----------------------------------------------------------------------------------------------------
map éé :TlistToggle<cr>
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Use_Right_Window = 1
let Tlist_Close_On_Select = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "name"
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Ctags_Cmd = '/Users/remi/Local/homebrew/bin/ctags'
" }}}

" FuzzyFinder settings {{{
" ----------------------------------------------------------------------------------------------------
map <Leader>o :FufFileWithCurrentBufferDir<CR>
map <Leader>d :FufDir<CR>
map <Leader>bb :FufBuffer<CR>
let g:fuf_keyPreview = '<C-k>'
let g:fuf_keyOpenTabpage = '<S-CR>'
let g:fuf_keyOpenVsplit = ''
let g:fuf_infoFile = '~/.vim-local/.vimfuf'
" }}}

" Supertab settings {{{
" ----------------------------------------------------------------------------------------------------
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = '<c-p>'
" }}}

" MRU settings {{{
" ----------------------------------------------------------------------------------------------------
let MRU_File=expand("$HOME")."/.vim-local/.vimmru"
let MRU_Window_Height = 15
map <Leader>m :MRU<CR>
autocmd BufEnter __MRU_Files__ set scrolloff=0 cursorline
autocmd BufLeave __MRU_Files__ set scrolloff=4 nocursorline
" }}}

" YankRing {{{
" ----------------------------------------------------------------------------------------------------
let g:yankring_history_dir = expand('$HOME').'/.vim-local'
let g:yankring_history_file = '.vim-yankring'
map <Leader>y :YRShow<CR>
autocmd BufEnter \[YankRing\] set scrolloff=0 cursorline
autocmd BufLeave \[YankRing\] set scrolloff=4 nocursorline
" }}}

" html.vim settings {{{
" ----------------------------------------------------------------------------------------------------
let g:do_xhtml_mappings = 'yes'
let g:no_html_toolbar = 'yes'
let g:no_html_menu = 'yes'
" }}}

" Sparkup settings {{{
" ----------------------------------------------------------------------------------------------------
let g:sparkupExecuteMapping = '<D-e>'
" }}}

source $HOME/.vim/plugins-zencoding.vim
