" Set local directory
" ----------------------------------------------------------------------------------------------------
let s:vimlocal=$HOME.'/.nvim-local'

" Window title
" ----------------------------------------------------------------------------------------------------
let &titlestring = hostname()
set title

" Define the leader key
" ----------------------------------------------------------------------------------------------------
let mapleader = ","
let g:mapleader = ","

" Viminfo
" ----------------------------------------------------------------------------------------------------
execute "set viminfo=".'''50,<1000,s100,h,n'.s:vimlocal.'/info'

" Backups
" ----------------------------------------------------------------------------------------------------
set backup
set swapfile

execute "set backupdir=".s:vimlocal.'/backup'
execute "set directory=".s:vimlocal.'/swap'

if exists("+undofile")
  set undofile
  execute "set undodir=".s:vimlocal.'/undo'
endif

" Statusline
" ----------------------------------------------------------------------------------------------------
function! IsHelp()
  return &buftype=='help'?' (help) ':''
endfunction

function! GetName()
  return expand("%:t")==''?'<none>':substitute(expand("%:p"), getcwd() . "/", "", "g")
endfunction

set statusline=%1* %{GetName()} %3*
set statusline+=%7*%{&modified?' (modified)':' '}%3*
set statusline+=%5*%{IsHelp()}%3*
set statusline+=%6*%{&readonly?' (read-only) ':' '}%3*
set statusline+=%3*%=
set statusline+=%3*c:%4*%c  
set statusline+=%3*l:%4*%l  
set statusline+=%3*lc:%4*%L 

" Mark trailing whitespace
" ----------------------------------------------------------------------------------------------------
match Todo /\(\(\t\|\s\)\+$\)/

" Locale
" ----------------------------------------------------------------------------------------------------
let $LC_ALL = "fr_CA.UTF-8"

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

" We often press 'Shift' when we should not
" ----------------------------------------------------------------------------------------------------
command! -nargs=* -bang -complete=file Q q <args>
command! -nargs=* -bang -complete=file W w <args>
command! -nargs=* -bang -complete=file Wq wq <args>
command! -nargs=* -bang -complete=file WQ wq <args>
command! -nargs=* -bang -complete=file E e <args>
command! -nargs=* -complete=file Cd cd <args>
command! -nargs=* -complete=file CD cd <args>
command! -nargs=* -complete=option Set set <args>
command! -nargs=* -complete=file So so <args>

" Rename current file
" ----------------------------------------------------------------------------------------------------
command! -nargs=* -complete=file -bang Rename call Rename(<q-args>, '<bang>')
command! -nargs=* -complete=file -bang RenameFile call Rename(expand('%:p:h') . '/' . <q-args>, '<bang>')

" Legacy!
" ----------------------------------------------------------------------------------------------------
command! -nargs=* -complete=file Ag Ack <args>

" Move the cursor to its last location in the file
" ----------------------------------------------------------------------------------------------------
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" Strip trailing whitespace on save
" ----------------------------------------------------------------------------------------------------
fun! StripTrailingWhitespace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

autocmd FileType * autocmd BufWritePre <buffer> :call StripTrailingWhitespace()

" QuickFix
" ----------------------------------------------------------------------------------------------------
autocmd FileType qf setl scrolloff=0 cursorline
autocmd FileType qf noremap <buffer> <CR> <CR>

" Git
" ----------------------------------------------------------------------------------------------------
autocmd BufReadPost COMMIT_EDITMSG exe "normal gg"

" telescope.nvim settings
" ----------------------------------------------------------------------------------------------------
nnoremap <leader>t <cmd>Telescope find_files<cr>
nnoremap <leader>T <cmd>lua require('telescope.builtin').find_files({ hidden = true })<cr>
nnoremap <leader>o <cmd>lua require('telescope.builtin').find_files({ cwd = vim.fn.expand('%:p:h') })<cr>
nnoremap <leader>, <cmd>Telescope buffers<cr>
nnoremap <leader>m <cmd>Telescope oldfiles<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>ca <cmd>lua require("CopilotChat.integrations.telescope").pick(require("CopilotChat.actions").prompt_actions())<cr>
vnoremap <leader>ca <cmd>lua require("CopilotChat.integrations.telescope").pick(require("CopilotChat.actions").prompt_actions())<cr>

" Signify
" ----------------------------------------------------------------------------------------------------
let g:signify_sign_add = '+'
let g:signify_sign_delete = '—'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change = '≈'
let g:signify_sign_change_delete = g:signify_sign_change . g:signify_sign_delete_first_line

" YankRing
" ----------------------------------------------------------------------------------------------------
let g:yankring_history_dir = expand('$HOME').'/.vim-local'
let g:yankring_history_file = '.vim-yankring'
let g:yankring_clipboard_monitor=0
map <Leader>y :YRShow<CR>
autocmd BufEnter \[YankRing\] set scrolloff=0 cursorline
autocmd BufLeave \[YankRing\] set scrolloff=4 nocursorline

" Ack.vim settings
" ----------------------------------------------------------------------------------------------------
let g:ackprg = 'rg --no-heading --color=never --column --line-number'

" vim-commentary settings
" ----------------------------------------------------------------------------------------------------
nmap <Leader>cc <Plug>CommentaryLine
xmap <Leader>cc <Plug>Commentary

" nvim-treesitter settings
" ----------------------------------------------------------------------------------------------------
nmap <Leader>l :NvimTreeToggle<cr>
