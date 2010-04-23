" ----------------------------------------------------------------------------------------------------
" @file         map.vim
" @description  Keyboard mappings
" @author       Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" Strip HTML tags in selected line {{{
" ----------------------------------------------------------------------------------------------------
vnoremap <Leader>h :s/<\/*\([a-z][a-z0-9]*\)[^>]*>//g<CR><Esc>:silent noh<Bar>echo<CR>
" }}}

" Easy fold navigation {{{
" ----------------------------------------------------------------------------------------------------
noremap <silent> <CR> zo
noremap <silent> <S-CR> za
noremap <silent> <S-D-CR> zMzo
noremap <silent> <S-D-Up> zk
noremap <silent> <S-D-Down> zj
" }}}

" Easy new lines {{{
" ----------------------------------------------------------------------------------------------------
noremap <silent> ø <Esc>o<Esc>k
noremap <silent> Ø <Esc>O<Esc>j
map K <Esc>i<CR><Esc><Esc>
" }}}

" Always go to the mark’s line and column {{{
" ----------------------------------------------------------------------------------------------------
noremap ' `
vnoremap ' `
noremap g' g`
vnoremap g' g`
" }}}

" Reload snipMate snippet {{{
" ----------------------------------------------------------------------------------------------------
nmap ,rr :call ReloadSnippets(&filetype)<CR>
" }}}

" Remap ^ caracters {{{
" ----------------------------------------------------------------------------------------------------
noremap â ^a
noremap î ^i
noremap ô ^o
" }}}

" Set a few useful motion commands {{{
" ----------------------------------------------------------------------------------------------------
noremap ° t;
noremap   t 
noremap < t<
noremap " t"
" }}}

" Add a new '/' text object {{{
" ----------------------------------------------------------------------------------------------------
onoremap i/ :normal T/vt/<CR>
vnoremap i/ t/oT/
onoremap a/ :normal F/vf/<CR>
vnoremap a/ f/oF/
onoremap i; :normal T:lvt;<CR>
" }}}

" Fast save {{{
" ----------------------------------------------------------------------------------------------------
nmap <leader>w :w!<cr>
" }}}

" Trim whitespace {{{
" ----------------------------------------------------------------------------------------------------
noremap <Leader>t m':%s!\s*$!!g<CR>:silent noh<Bar>echo<CR>`'
" }}}

" We often press 'Shift' when we should not {{{
" ----------------------------------------------------------------------------------------------------
command! Q q
command! W w
command! Wq wq
command! WQ wq
" }}}

" CamelCaseMotion settings {{{
" ----------------------------------------------------------------------------------------------------
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e
" }}}

" Let's remap Enter and Backspace {{{
" ----------------------------------------------------------------------------------------------------
vnoremap  <silent>
vnoremap <BS> hx
" }}}

" I often wrongly press 'Shift' in visual mode… {{{
" ----------------------------------------------------------------------------------------------------
vnoremap <S-Up> k
vnoremap <S-Down> j
" }}}

" Easy split navigation {{{
" ----------------------------------------------------------------------------------------------------
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
noremap <C-K> <C-W>k
noremap <C-J> <C-W>j
" }}}

" Because 'CTRL-T' is easier to type on a canadian keyboard {{{
" ----------------------------------------------------------------------------------------------------
noremap <C-T> <C-]>
" }}}

" Easy line moving {{{
" ----------------------------------------------------------------------------------------------------
noremap <C-Up> ddkkp
noremap <C-Down> ddp
" }}}

" Easy tab navigation {{{
" ----------------------------------------------------------------------------------------------------
noremap <S-C-Tab> :tabprevious<CR>
inoremap <S-C-Tab> <Esc>:tabprevious<CR>
vnoremap <S-C-Tab> <Esc>:tabprevious<CR>
noremap <C-Tab> :tabnext<CR>
inoremap <C-Tab> <Esc>:tabnext<CR>
vnoremap <C-Tab> <Esc>:tabnext<CR>

noremap <M-D-Left> <Esc>:tabprevious<CR>
noremap <M-D-Right> <Esc>:tabnext<CR>
" }}}

" Reload the current file {{{
" ----------------------------------------------------------------------------------------------------
noremap <D-r> :e<CR>
" }}}

" Function keys {{{
" ----------------------------------------------------------------------------------------------------
noremap <F9> :set list!<Bar>set list?<CR>
noremap <F8> :set wrap! linebreak! nolist!<Bar>set wrap?<CR>
noremap <F10> :set paste!<Bar>set paste?<CR>
noremap <F11> :set expandtab!<Bar>set expandtab?<CR>
" }}}

" Insert current date {{{
" ----------------------------------------------------------------------------------------------------
" format YYYYMMDD (eg. 20100105)
inoremap <D-d> <C-R>=strftime("%Y%m%d")<CR>
noremap ª cw<C-R>=strftime("%Y%m%d")<CR><Esc>b
" format ISO 8601 (eg. 2010-01-05T20:51:15-0500)
inoremap <D-D> <C-R>=strftime("%Y-%m-%dT%H:%M:%S%z")<CR>
noremap ˇ cw<C-R>=strftime("%Y-%m-%dT%H:%M:%S%z")<CR><Esc>b
" }}}

" Duplicate line {{{
" ----------------------------------------------------------------------------------------------------
noremap <D-d> m'yyP`'k
vnoremap <D-d> m'y'>p`'
" }}}

" Select only the text caracters in the current line {{{
" ----------------------------------------------------------------------------------------------------
noremap √ ^v$h
noremap <C-V> ^v$h
" }}}

" Easy indentation in visual mode {{{
" ----------------------------------------------------------------------------------------------------
vnoremap < <gv
vnoremap > >gv|
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv
" }}}

" Clear search-highlighted terms {{{
" ----------------------------------------------------------------------------------------------------
noremap <silent> <Space> :silent noh<Bar>echo<CR>
" }}}
