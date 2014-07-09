" vim-easymotion settings
" ----------------------------------------------------------------------------------------------------
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

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
\ 'dir':  '\v(^|\/)(deps|log|vendor|tmp|_build|node_modules|\..+)$',
\ 'file':  '\v(^|\/)(\.DS_Store)$',
\}

" Supertab settings
" ----------------------------------------------------------------------------------------------------
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<c-x><c-n>'
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&completefunc']
let g:SuperTabContextDiscoverDiscovery =["&completefunc:<c-x><c-u>"]

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
let &shellpipe='2>/dev/null>'
let g:ackprg = 'ack --nogroup --nocolor --column'

" vim-markdown settings
" ----------------------------------------------------------------------------------------------------
let g:vim_markdown_folding_disabled=1

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
\  'less': {
\    'extends': 'css',
\  },
\  'javascript': {
\    'snippets': {
\      'fu': "function() {\n\t|\n}",
\      'fe': "function(e) {\n\t|\n}",
\      'cl': 'console.log(|);',
\      'al': 'alert(|);',
\      'rf': 'return false;',
\    },
\  },
\  'javascript.jquery': {
\    'extends': 'javascript',
\  },
\  'ruby': {
\    'snippets': {
\      'l': 'Rails.logger.info |',
\      'e': '#{|}',
\    },
\  },
\  'haml': {
\    'extends': 'ruby',
\  },
\  'eruby': {
\    'extends': 'ruby',
\  },
\}
