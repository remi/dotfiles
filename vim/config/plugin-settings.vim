" Plugged settings
" ----------------------------------------------------------------------------------------------------
let g:plug_window = 'topleft new'

" ctrlp.vim settings
" ----------------------------------------------------------------------------------------------------
map <Leader>t :CtrlP $(pwd)<CR>
map <Leader>o :CtrlP %:p:h<CR>
map <Leader>, :CtrlPBuffer<CR>
map <Leader>m :CtrlPMRU<CR>
map <Leader>T :CtrlPClearCache<CR>:CtrlP $(pwd)<CR>
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
let g:ctrlp_status_func = { 'main': '', 'prog': '' }
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v(^|\/)(deps|log|vendor|tmp|_build|node_modules|\.git|bower_components|\.bower-cache|dist)$',
\ 'file':  '\v(^|\/)(\.DS_Store|.*\.js\.map)$',
\}

" YankRing
" ----------------------------------------------------------------------------------------------------
let g:yankring_history_dir = expand('$HOME').'/.vim-local'
let g:yankring_history_file = '.vim-yankring'
map <Leader>y :YRShow<CR>
autocmd BufEnter \[YankRing\] set scrolloff=0 cursorline
autocmd BufLeave \[YankRing\] set scrolloff=4 nocursorline

" Rails.vim settings
" ----------------------------------------------------------------------------------------------------
let g:rails_statusline=0

" Ack.vim settings
" ----------------------------------------------------------------------------------------------------
let g:ackprg = 'rg --no-heading --color=never --column --line-number'

" vim-markdown settings
" ----------------------------------------------------------------------------------------------------
let g:vim_markdown_folding_disabled=1

" vim-javascript settings
" ----------------------------------------------------------------------------------------------------
let b:javascript_fold=0
let g:javascript_plugin_flow=1
hi! def link jsGlobalObjects Conditional
hi! def link jsStatement Statement
hi! def link jsConditional Statement
hi! def link jsRepeat Statement
hi! def link jsLabel Statement
hi! def link jsKeyword Statement
hi! def link jsClass Statement
hi! def link jsException Statement
hi! def link jsSuper Statement
hi! def link jsStorageClass Statement
hi! def link jsPrototype Statement
hi! def link jsThis Identifier

" vim-jsx settings
" ----------------------------------------------------------------------------------------------------
let g:jsx_ext_required = 0

" Neomake settings
" ----------------------------------------------------------------------------------------------------
let g:neomake_open_list=2
let g:neomake_list_height=4
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_scss_enabled_makers = ['stylelint']
let g:neomake_ruby_enabled_makers = ['rubocop']
let g:neomake_html_enabled_makers = ['tidy']
let g:neomake_elixir_enabled_makers = []
let g:neomake_scss_stylelint_maker = { 'args': ['--no-color'], 'errorformat': '%+P%f,%*\s%l:%c  %t  %m,%-Q' }
let g:neomake_html_tidy_maker = { 'args': ['-e', '-q'], 'errorformat': 'line %l column %c - %m' }
autocmd! BufWritePost * Neomake

" emmet settings
" ----------------------------------------------------------------------------------------------------
let g:user_emmet_leader_key = ';'
let g:user_emmet_expandabbr_key = ';;'
let g:user_emmet_settings = {
\  'indentation': '  ',
\  'css': {
\    'snippets': {
\      'fs': 'font-size:|px;',
\      'fy': 'font-style:|;',
\      'di': 'display:|;',
\      'bo': 'border:|;',
\      'bo:n': 'border:none;',
\      'ba': 'background:#|;',
\      'pa': 'padding:|;',
\      'ma': 'margin:|;',
\      'he': 'height:|;',
\      'wi': 'width:|;',
\      'co': 'color:#|;',
\      'pos': 'position:|;',
\      'pos:s': 'position:static;',
\      'pos:a': 'position:absolute;',
\      'pos:r': 'position:relative;',
\      'pos:f': 'position:fixed;',
\      't': 'top:|;',
\      'r': 'right:|;',
\      'b': 'bottom:|;',
\      'l': 'left:|;',
\      'z': 'z-index:|;',
\      'fl': 'float:|;',
\      'fl:n': 'float:none;',
\      'fl:l': 'float:left;',
\      'fl:r': 'float:right;',
\      'cl': 'clear:|;',
\      'cl:b': 'clear:both;',
\      'd': 'display:|;',
\      'd:n': 'display:none;',
\      'd:b': 'display:block;',
\      'd:i': 'display:inline;',
\      'd:ib': 'display:inline-block;',
\      'v': 'visibility:|;',
\      'ov': 'overflow:|;',
\      'm': 'margin:|;',
\      'p': 'padding:|;',
\      'w': 'width:|;',
\      'h': 'height:|;',
\      'bg': 'background:|;',
\      'lis': 'list-style:|;',
\      'va': 'vertical-align:|;',
\      'va:m': 'vertical-align:middle;',
\      'ta': 'text-align:|;',
\      'ta:l': 'text-align:left;',
\      'ta:c': 'text-align:center;',
\      'ta:r': 'text-align:right;',
\      'td': 'text-decoration:|;',
\      'td:n': 'text-decoration:none;',
\      'td:u': 'text-decoration:underline;',
\      'tt': 'text-transform:|;',
\      'tt:n': 'text-transform:none;',
\      'tt:u': 'text-transform:uppercase;',
\      'tsh': 'text-shadow:|;',
\      'lh': 'line-height:|;',
\      'fw:n': 'font-weight:normal;',
\      'fw:b': 'font-weight:bold;',
\      'ff': 'font-family:|;',
\      'op': 'opacity:|;',
\      'cur': 'cursor:|;',
\    },
\  },
\  'eruby': {
\    'snippets': {
\      'ee': "<%= | %>",
\      'er': "<% | %>",
\    },
\  },
\  'blade': {
\    'extends': 'html',
\    'snippets': {
\      'ee': "{{ | }}",
\      'er': "{!! | !!}",
\      'php': "<?php | ?>",
\    },
\  },
\}
