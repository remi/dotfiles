" ----------------------------------------------------------------------------------------------------
" @file         map.vim
" @description  Keyboard mappings
" @author       Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" Remove support for regular system-wide bindings {{{
" ----------------------------------------------------------------------------------------------------
nnoremap <Up> <Esc>
vnoremap <Up> <NOP>
inoremap <Up> <NOP>
nnoremap <Down> <Esc>
vnoremap <Down> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <Esc>
vnoremap <Left> <NOP>
inoremap <Left> <NOP>
nnoremap <Right> <Esc>
vnoremap <Right> <NOP>
inoremap <Right> <NOP>
" }}}

" Strip HTML tags in selected line {{{
" ----------------------------------------------------------------------------------------------------
vnoremap <Leader>h :s/<\/*\([a-z][a-z0-9]*\)[^>]*>//g<CR><Esc>:silent noh<Bar>echo<CR>
" }}}

" Easy fold navigation {{{
" ----------------------------------------------------------------------------------------------------
noremap <silent> <D-J> <Nop>
noremap <silent> <D-K> <Nop>
noremap <silent> ∆ zj
noremap <silent> ˚ zk
noremap <silent>  za
noremap <silent> <S-CR> zMzo
" }}}

" Easy lines navigation {{{
" ----------------------------------------------------------------------------------------------------
noremap <silent> <D-j> gj
noremap <silent> <D-k> gk
" }}}

" Easy new lines {{{
" ----------------------------------------------------------------------------------------------------
noremap <silent> ø mo<Esc>o<Esc>k`o
noremap <silent> Ø mo<Esc>O<Esc>j`o
map K <Esc>i<CR><Esc><Esc>
" }}}

" Always go to the mark’s line and column {{{
" ----------------------------------------------------------------------------------------------------
noremap ' `
vnoremap ' `
noremap g' g`
vnoremap g' g`
" }}}

" Remap ^ caracters {{{
" ----------------------------------------------------------------------------------------------------
noremap â ^a
noremap î ^i
noremap ô ^o
" }}}

" Add a new '/' text object {{{
" ----------------------------------------------------------------------------------------------------
onoremap i/ :normal T/vt/<CR>
vnoremap i/ t/oT/
onoremap a/ :normal F/vf/<CR>
vnoremap a/ f/oF/
onoremap i; :normal T:lvt;<CR>
" }}}

" We often press 'Shift' when we should not {{{
" ----------------------------------------------------------------------------------------------------
command! -nargs=* -complete=file Q q <args>
command! -nargs=* -complete=file W w <args>
command! -nargs=* -complete=file Wq wq <args>
command! -nargs=* -complete=file WQ wq <args>
command! -nargs=* -complete=file E e <args>
command! -nargs=* -complete=file Cd cd <args>
command! -nargs=* -complete=file CD cd <args>
" }}}

" Let's remap Enter and Backspace {{{
" ----------------------------------------------------------------------------------------------------
vnoremap  <NOP>
vnoremap <BS> dk$
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
"noremap <S-C-Tab> :tabprevious<CR>
"inoremap <S-C-Tab> <Esc>:tabprevious<CR>
"vnoremap <S-C-Tab> <Esc>:tabprevious<CR>
"noremap <C-Tab> :tabnext<CR>
"inoremap <C-Tab> <Esc>:tabnext<CR>
"vnoremap <C-Tab> <Esc>:tabnext<CR>
"noremap <M-D-Left> <Esc>:tabprevious<CR>
"noremap <M-D-Right> <Esc>:tabnext<CR>

noremap <S-C-Tab> :bprevious<CR>
inoremap <S-C-Tab> <Esc>:bprevious<CR>
vnoremap <S-C-Tab> <Esc>:bprevious<CR>
noremap <C-Tab> :bnext<CR>
inoremap <C-Tab> <Esc>:bnext<CR>
vnoremap <C-Tab> <Esc>:bnext<CR>

" }}}

" Reload the current file {{{
" ----------------------------------------------------------------------------------------------------
"noremap <D-r> :e<CR>
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
" }}}

" Easy indentation in visual mode {{{
" ----------------------------------------------------------------------------------------------------
vnoremap < <gv
vnoremap > >gv|
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv
nnoremap  <C-i>
nnoremap <Tab> mzV>`zl
nnoremap <S-Tab> mzV<`zh
" }}}

" Clear search-highlighted terms {{{
" ----------------------------------------------------------------------------------------------------
noremap <silent> <Space> :silent noh<Bar>echo<CR>
" }}}

inoremap ;zo {{{<Esc>
inoremap ;zc }}}<Esc>

" Always use magic regexes {{{
" ----------------------------------------------------------------------------------------------------
nnoremap / /\v
vnoremap / /\v
" }}}

" Prevent accidental uses of <F1> {{{
" ----------------------------------------------------------------------------------------------------
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
" }}}

" Splits! {{{
" ----------------------------------------------------------------------------------------------------
nnoremap <C-c> <C-W>c<CR>
" }}}

" Get help with zero-width {{{
" ----------------------------------------------------------------------------------------------------
function! ZeroWidth_help()
  split ~/.vim/doc/zero_width.mkd
endfunction
command! ZeroWidth call ZeroWidth_help()
" }}}

" Show syntax highlighting groups for word under cursor {{{
nmap <D-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
" }}}

" Change the working directory to the current file directory {{{
noremap èè :lcd %:p:h<CR>
" }}}

" Toggle Scratch buffer {{{
" Credit: http://weblog.jamisbuck.org/2008/11/17/vim-follow-up
function! ToggleScratch()
  if expand('%') == g:ScratchBufferName
    quit
  else
    Sscratch
  endif
endfunction

map <leader>x :call ToggleScratch()<CR>
" }}}

" Use Alt-4 to go to the end of the line, but not totally.{{{
noremap € $h
" }}}

" Let’s try not to use ESC anymore {{{
inoremap jj <Esc>
inoremap jk <Esc>
" }}}
