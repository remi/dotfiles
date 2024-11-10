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
nmap <silent> <M-j> ddp
nmap <silent> <M-k> ddkkp
vmap <silent> <M-j> djPV`]
vmap <silent> <M-k> dkPV`]

" Easy buffer navigation
" ----------------------------------------------------------------------------------------------------
nmap > :bnext<CR>
nmap < :bprevious<CR>

" Insert current date
" ----------------------------------------------------------------------------------------------------
imap <M-d> <C-R>=strftime("%Y%m%d")<CR>
imap <M-D> <C-R>=strftime("%Y-%m-%dT%H:%M:%S%z")<CR>

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

" Change the working directory to the current file directory
" ----------------------------------------------------------------------------------------------------
nmap èè :lcd %:p:h<CR>

" Use Alt-4 to go to the end of the line, but not totally.
" ----------------------------------------------------------------------------------------------------
vnoremap <M-4> $h

" Disable ex mode, damnit
" ----------------------------------------------------------------------------------------------------
nmap Q :echo "BOOYA! Ex mode is disabled."<cr>

" Disable a few arrow keys
" ----------------------------------------------------------------------------------------------------
inoremap <Left> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>

" CamelCaseMotion mappings
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

" Mappings that need to be defined after CamelCaseMotion ones
" ----------------------------------------------------------------------------------------------------
nmap <Leader>!d :bdelete!<CR>
nmap <Leader>d :bdelete<CR>
nmap <Leader>D :bufdo bdelete!<CR>
nmap <Leader>w :w!<cr>
