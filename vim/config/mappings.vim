" Easy new lines
" ----------------------------------------------------------------------------------------------------
noremap <silent> ø mo<Esc>o<Esc>k`o
noremap <silent> Ø mo<Esc>O<Esc>j`o
noremap K <Esc>i<CR><Esc><Esc>

" Always go to the mark’s line and column
" ----------------------------------------------------------------------------------------------------
nmap ' `
vmap ' `
noremap g' g`
vnoremap g' g`

" Remap ^ caracters
" ----------------------------------------------------------------------------------------------------
nmap â ^a
nmap î ^i
nmap ô ^o

" Add a new Text Objects
" ----------------------------------------------------------------------------------------------------
omap i/ :normal T/vt/<CR>
vmap i/ t/oT/
omap a/ :normal F/vf/<CR>
vmap a/ f/oF/
omap i\| :normal T\|vt\|<CR>
vmap i\| t\|oT\|
omap a\| :normal F\|vf\|<CR>
vmap a\| f\|oF\|

" Remap Enter and Backspace
" ----------------------------------------------------------------------------------------------------
vmap  <NOP>
vmap <BS> dk$

" Split navigation
" ----------------------------------------------------------------------------------------------------
nmap <C-c> <C-W>c<CR>
nmap <C-K> <C-W><C-K>
nmap <C-J> <C-W><C-J>

" Because 'CTRL-T' is easier to type on a canadian keyboard
" ----------------------------------------------------------------------------------------------------
noremap <C-T> <C-]>

" Easy line moving
" ----------------------------------------------------------------------------------------------------
nmap <silent> ∆ ddp
nmap <silent> ˚ ddkkp
vmap <silent> ∆ djPV`]
vmap <silent> ˚ dkPV`]

" Easy buffer navigation
" ----------------------------------------------------------------------------------------------------
nmap > :bnext<CR>
nmap < :bprevious<CR>

" Function keys
" ----------------------------------------------------------------------------------------------------
nmap <F9> :setl list!<Bar>setl list?<CR>
nmap <F8> :setl wrap!<Bar>setl wrap?<CR>
nmap <F10> :setl paste!<Bar>setl paste?<CR>
nmap <F11> :setl expandtab!<Bar>setl expandtab?<CR>

" Insert current date
" ----------------------------------------------------------------------------------------------------
" format YYYYMMDD (eg. 20100105)
imap ª <C-R>=strftime("%Y%m%d")<CR>
" format ISO 8601 (eg. 2010-01-05T20:51:15-0500)
imap ˇ <C-R>=strftime("%Y-%m-%dT%H:%M:%S%z")<CR>

" Duplicate line
" ----------------------------------------------------------------------------------------------------
nmap ª m'yyP`'k
vmap ª m'y'>p`'

" Select only the text caracters in the current line
" ----------------------------------------------------------------------------------------------------
nmap √ ^v$h

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
nmap <Leader>p :echo expand('%:p')<CR>

" Clear search-highlighted terms
" ----------------------------------------------------------------------------------------------------
nmap <silent> <Space> :silent noh<Bar>echo<CR>

" Prevent accidental uses of <F1>
" ----------------------------------------------------------------------------------------------------
map <F1> <ESC>

" Change the working directory to the current file directory
" ----------------------------------------------------------------------------------------------------
nmap èè :lcd %:p:h<CR>

" Use Alt-4 to go to the end of the line, but not totally.
" ----------------------------------------------------------------------------------------------------
vmap € $h

" Execute the current file
" ----------------------------------------------------------------------------------------------------
nmap <Leader>r :call CallInterpreter()<CR>

" Clear trailing whitespace
" ----------------------------------------------------------------------------------------------------
nmap <C-L> :call g:ClearTrailingWhitespace()<cr>

" Disable ex mode, damnit
" ----------------------------------------------------------------------------------------------------
nmap Q :echo "BOOYA! Ex mode is disabled."<cr>

" Show highlight group under the cursor
" ----------------------------------------------------------------------------------------------------
map <Leader>a :call ShowHighlightGroup()<CR>

" Copy file path to clipboard
" ----------------------------------------------------------------------------------------------------
nmap <leader>yf :let @+=expand('%')<CR>

" Run mix format and reload the current file
" ----------------------------------------------------------------------------------------------------
nmap <leader>f :silent !mix format %<CR>:e!<CR>

" Disable arrow keys
" ----------------------------------------------------------------------------------------------------
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
