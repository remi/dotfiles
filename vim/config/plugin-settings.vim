" Plugged settings
" ----------------------------------------------------------------------------------------------------
let g:plug_window = 'topleft new'

" ctrlp.vim settings
" ----------------------------------------------------------------------------------------------------
map <Leader>t :CtrlP $(pwd)<CR>
map <Leader>T :CtrlPClearCache<CR>:CtrlP $(pwd)<CR>
map <Leader>o :CtrlP %:p:h<CR>
map <Leader>, :CtrlPBuffer<CR>
map <Leader>m :CtrlPMRU<CR>
map <Leader>l :CtrlPLine<CR>
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_show_hidden = 1

let g:ctrlp_custom_ignore = {}
let g:ctrlp_custom_ignore.dir = '\v(^|\/)(deps|doc|log|vendor|tmp|_build|node_modules|\.git|bower_components|\.bower-cache|dist|\.elixir_ls|obj|bin\/Debug)$'
let g:ctrlp_custom_ignore.file = '\v(^|\/)(\.DS_Store|.*\.js\.map)$'

let g:ctrlp_status_func = {}
let g:ctrlp_status_func.main = 'CtrlP_Statusline_1'
let g:ctrlp_status_func.prog = 'CtrlP_Statusline_2'

function! CtrlP_Statusline_1(...)
  let item = a:5
  let directory = '%#NonText# '.(item == 'files' ? getcwd() : '')

  return " ".item." ".directory
endf

function! CtrlP_Statusline_2(...)
  let progress = a:1

  return progress
endf

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

" coc.vim settings
" ----------------------------------------------------------------------------------------------------
set nobackup
set nowritebackup
set updatetime=100
set shortmess+=c

nmap <Leader>ad <Plug>(coc-definition)
nmap <Leader>ah <Plug>(coc-type-definition)
nmap <Leader>ar <Plug>(coc-references)
nmap <Leader>ai <Plug>(coc-implementation)
nmap <silent> <leader>h :call CocActionAsync('doHover')<cr>
nmap <silent> <leader>H :call CocActionAsync('doHover', 'preview')<cr>

" vim-commentary settings
" ----------------------------------------------------------------------------------------------------
nmap <Leader>cc <Plug>CommentaryLine
xmap <Leader>cc <Plug>Commentary

" Copilot settings
" ----------------------------------------------------------------------------------------------------
nmap <leader>ic <cmd>CopilotChatToggle<cr>
vmap <leader>ic <cmd>CopilotChatToggle<cr>
vmap <leader>id <cmd>CopilotChatDocs<cr>
vmap <leader>ie <cmd>CopilotChatExplain<cr>
vmap <leader>ie <cmd>CopilotChatFix<cr>
vmap <leader>io <cmd>CopilotChatOptimize<cr>
vmap <leader>it <cmd>CopilotChatTests<cr>
