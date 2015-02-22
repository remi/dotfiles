" Easy new lines
" ----------------------------------------------------------------------------------------------------
noremap <silent> ø mo<Esc>o<Esc>k`o
noremap <silent> Ø mo<Esc>O<Esc>j`o
map K <Esc>i<CR><Esc><Esc>

" Always go to the mark’s line and column
" ----------------------------------------------------------------------------------------------------
noremap ' `
vnoremap ' `
noremap g' g`
vnoremap g' g`

" Remap ^ caracters
" ----------------------------------------------------------------------------------------------------
noremap â ^a
noremap î ^i
noremap ô ^o

" Add a new Text Objects
" ----------------------------------------------------------------------------------------------------
onoremap i/ :normal T/vt/<CR>
vnoremap i/ t/oT/
onoremap a/ :normal F/vf/<CR>
vnoremap a/ f/oF/
onoremap i\| :normal T\|vt\|<CR>
vnoremap i\| t\|oT\|
onoremap a\| :normal F\|vf\|<CR>
vnoremap a\| f\|oF\|

" Remap Enter and Backspace
" ----------------------------------------------------------------------------------------------------
vnoremap  <NOP>
vnoremap <BS> dk$

" Split navigation
" ----------------------------------------------------------------------------------------------------
nnoremap <C-c> <C-W>c<CR>

" Error list navigation
" ----------------------------------------------------------------------------------------------------
noremap <C-K> :cprev<CR>
noremap <C-J> :cnext<CR>

" Because 'CTRL-T' is easier to type on a canadian keyboard
" ----------------------------------------------------------------------------------------------------
noremap <C-T> <C-]>

" Easy line moving
" ----------------------------------------------------------------------------------------------------
noremap <silent> ∆ ddp
noremap <silent> ˚ ddkkp
vnoremap <silent> ∆ djPV`]
vnoremap <silent> ˚ dkPV`]

" Easy buffer navigation
" ----------------------------------------------------------------------------------------------------
nnoremap > :bnext<CR>
nnoremap < :bprevious<CR>

" Function keys
" ----------------------------------------------------------------------------------------------------
noremap <F9> :setl list!<Bar>setl list?<CR>
noremap <F8> :setl wrap! linebreak! nolist!<Bar>setl wrap?<CR>
noremap <F10> :setl paste!<Bar>setl paste?<CR>
noremap <F11> :setl expandtab!<Bar>setl expandtab?<CR>

" Insert current date
" ----------------------------------------------------------------------------------------------------
" format YYYYMMDD (eg. 20100105)
inoremap ª <C-R>=strftime("%Y%m%d")<CR>
" format ISO 8601 (eg. 2010-01-05T20:51:15-0500)
inoremap ˇ <C-R>=strftime("%Y-%m-%dT%H:%M:%S%z")<CR>

" Duplicate line
" ----------------------------------------------------------------------------------------------------
noremap ª m'yyP`'k
vnoremap ª m'y'>p`'

" Select only the text caracters in the current line
" ----------------------------------------------------------------------------------------------------
noremap √ ^v$h

" Easy indentation in visual mode
" ----------------------------------------------------------------------------------------------------
vnoremap < <gv
vnoremap > >gv|
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv
nnoremap  <C-i>
nnoremap <Tab> mzV>`zl
nnoremap <S-Tab> mzV<`zh

" Print current file full path
" ----------------------------------------------------------------------------------------------------
map <Leader>p :echo expand('%:p')<CR>

" Clear search-highlighted terms
" ----------------------------------------------------------------------------------------------------
noremap <silent> <Space> :silent noh<Bar>echo<CR>

" Easy Vim folds insert
inoremap ;zo {{{<Esc>
inoremap ;zc }}}<Esc>

" Prevent accidental uses of <F1>
" ----------------------------------------------------------------------------------------------------
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Change the working directory to the current file directory
" ----------------------------------------------------------------------------------------------------
noremap èè :lcd %:p:h<CR>

" Use Alt-4 to go to the end of the line, but not totally.
" ----------------------------------------------------------------------------------------------------
vnoremap € $h

" Execute the current file
" ----------------------------------------------------------------------------------------------------
function! CallInterpreter()
  if match(getline(1), '^\#!') == 0
    let l:interpreter = getline(1)[2:]
    exec ("!".l:interpreter." %:p")
  else
    echohl ErrorMsg | echo "Err: No shebang present in file, canceling execution" | echohl None
  endif
endfunction
silent! unmap <Leader>rm
silent! unmap <Leader>rv
silent! unmap <Leader>rc
map <Leader>r :call CallInterpreter()<CR>

" Clear trailing whitespace
" ----------------------------------------------------------------------------------------------------
function! g:ClearTrailingWhitespace()
  %s/\s\+$//e
endfunc

nnoremap <C-L> :call g:ClearTrailingWhitespace()<cr>

" Disable ex mode, damnit
" ----------------------------------------------------------------------------------------------------
nnoremap Q :echo "BOOYA! Ex mode is disabled."<cr>

" Toggle Ruby code file and spec file
" ----------------------------------------------------------------------------------------------------
map <Leader>l :call SpecToggle()<cr>
