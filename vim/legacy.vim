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
