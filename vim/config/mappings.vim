" Easy new lines
" ----------------------------------------------------------------------------------------------------
noremap <silent> <M-o> mo<Esc>o<Esc>k`o
noremap <silent> <M-S-o> mo<Esc>O<Esc>j`o
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
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

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
nnoremap <M-d> m'yyP`'k
vnoremap <M-d> m'y'>p`'

" Select only the text caracters in the current line
" ----------------------------------------------------------------------------------------------------
nnoremap <M-v> ^v$h

" Easy indentation in visual mode
" ----------------------------------------------------------------------------------------------------
vnoremap < <gv
vnoremap > >gv|
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv
nnoremap  <C-i>
nnoremap <Tab> mzV>`zl
nnoremap <S-Tab> mzV<`zh

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
vnoremap <M-4> $h

" Disable ex mode, damnit
" ----------------------------------------------------------------------------------------------------
nmap Q :echo "BOOYA! Ex mode is disabled."<cr>

" Show highlight group under the cursor
" ----------------------------------------------------------------------------------------------------
map <Leader>a :call ShowHighlightGroup()<CR>

" Disable a few arrow keys
" ----------------------------------------------------------------------------------------------------
inoremap <Left> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
