" Plugged settings
" ----------------------------------------------------------------------------------------------------
let g:plug_window = 'topleft new'

" telescope.nvim settings
" ----------------------------------------------------------------------------------------------------
nnoremap <leader>t <cmd>lua require('telescope.builtin').find_files({ follow = true })<cr>
nnoremap <leader>T <cmd>lua require('telescope.builtin').find_files({ follow = true, hidden = true })<cr>
nnoremap <leader>o <cmd>lua require('telescope.builtin').find_files({ cwd = vim.fn.expand('%:p:h'), follow = true })<cr>
nnoremap <leader>, <cmd>lua require('telescope.builtin').buffers({ ignore_current_buffer = true })<cr>
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
imap <silent><script><expr> <Right> copilot#Accept("\<cr>")
let g:copilot_no_tab_map = v:true

" Copilot Chat settings
" ----------------------------------------------------------------------------------------------------
nmap <leader>ic <cmd>CopilotChatToggle<cr>
vmap <leader>ic <cmd>CopilotChatToggle<cr>
vmap <leader>id <cmd>CopilotChatDocs<cr>
vmap <leader>ie <cmd>CopilotChatExplain<cr>
vmap <leader>ie <cmd>CopilotChatFix<cr>
