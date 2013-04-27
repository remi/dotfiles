" FuzzyFinder settings
" ----------------------------------------------------------------------------------------------------
map <Leader>o :FufFileWithCurrentBufferDir<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>t :FufFile<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>p :FufCoverageFile<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>b :FufBuffer<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>, :FufBuffer<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>l :FufLine<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>T :FufRenewCache<CR>:FufFile<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>m :FufMruFile<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
let g:fuf_modesDisable = []
let g:fuf_keyPreview = '<C-k>'
let g:fuf_buffer_keyDelete = '<C-d>'
let g:fuf_keyOpenTabpage = '<S-CR>'
let g:fuf_keyOpenVsplit = ''
let g:fuf_infoFile = '~/.vim-local/.vimfuf'
let g:fuf_file_prompt = ' file → '
let g:fuf_coveragefile_prompt = ' cfile → '
let g:fuf_buffer_prompt = 'buffer → '
let g:fuf_buffer_prompt = 'buffer → '
let g:fuf_line_prompt = 'line → '
let g:fuf_mrufile_prompt = 'mru → '
let g:fuf_previewHeight = 0
let g:fuf_promptHighlight = "User8"
let g:fuf_file_exclude = '\v\~$|.sass-cache|Capfile|Gemfile\.lock|.DS_Store|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'

" Supertab settings
" ----------------------------------------------------------------------------------------------------
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = '<c-p>'

" YankRing
" ----------------------------------------------------------------------------------------------------
let g:yankring_history_dir = expand('$HOME').'/.vim-local'
let g:yankring_history_file = '.vim-yankring'
map <Leader>y :YRShow<CR>
autocmd BufEnter \[YankRing\] set scrolloff=0 cursorline
autocmd BufLeave \[YankRing\] set scrolloff=4 nocursorline

" Rails.vim settings
" ----------------------------------------------------------------------------------------------------
nmap <Leader>rc :Rcontroller<CR>
nmap <Leader>rv :Rview<CR>
nmap <Leader>rm :Rmodel<CR>
nmap <Leader>1 :Rmodel<CR>
nmap <Leader>2 :Rview<CR>
nmap <Leader>3 :Rcontroller<CR>
nmap <Leader>4 :A<CR>
let g:rails_statusline=0

" SyntaxAttr settings
" ----------------------------------------------------------------------------------------------------
map <Leader>a :call SyntaxAttr()<CR>

" vim-git-branch-info settings
" ----------------------------------------------------------------------------------------------------
let g:git_branch_status_head_current=1
let g:git_branch_status_text=""
let g:git_branch_status_around=""
let g:git_branch_status_nogit=""

" Ack.vim settings
" ----------------------------------------------------------------------------------------------------
let &shellpipe='2>/dev/null>'
let g:ackprg = 'ag --nogroup --nocolor --column'

" zencoding settings
" ----------------------------------------------------------------------------------------------------
let g:user_zen_leader_key = ';'
let g:user_zen_expandabbr_key = ';;'
let g:user_zen_settings = {
\  'indentation': '  ',
\  'css': {
\    'snippets': {
\      'h:1': 'height: 1%;',
\      'fs': 'font-size: |%;',
\      'fy': 'font-style: |;',
\      'di': 'display: |;',
\      'bo': 'border: |;',
\      'bo:n': 'border: none;',
\      'bot': 'border-top: |;',
\      'bob': 'border-bottom: |;',
\      'bor': 'border-right: |;',
\      'bol': 'border-left: |;',
\      'ba': 'background: #|;',
\      'bu': 'background: url("|") no-repeat 0 0;',
\      'pa': 'padding: |;',
\      'ma': 'margin: |;',
\      'he': 'height: |;',
\      'wi': 'width: |;',
\      'co': 'color: #|;',
\      'pos': 'position: |;',
\      'pos:s': 'position: static;',
\      'pos:a': 'position: absolute;',
\      'pos:r': 'position: relative;',
\      'pos:f': 'position: fixed;',
\      't': 'top: |;',
\      't:a': 'top: auto;',
\      'r': 'right: |;',
\      'r:a': 'right: auto;',
\      'b': 'bottom: |;',
\      'b:a': 'bottom: auto;',
\      'l': 'left: |;',
\      'l:a': 'left: auto;',
\      'z': 'z-index: |;',
\      'z:a': 'z-index: auto;',
\      'fl': 'float: |;',
\      'fl:n': 'float: none;',
\      'fl:l': 'float: left;',
\      'fl:r': 'float: right;',
\      'cl': 'clear: |;',
\      'cl:n': 'clear: none;',
\      'cl:l': 'clear: left;',
\      'cl:r': 'clear: right;',
\      'cl:b': 'clear: both;',
\      'd': 'display: |;',
\      'd:n': 'display: none;',
\      'd:b': 'display: block;',
\      'd:i': 'display: inline;',
\      'd:ib': 'display: inline-block;',
\      'v': 'visibility: |;',
\      'v:v': 'visibility: visible;',
\      'v:h': 'visibility: hidden;',
\      'ov': 'overflow: |;',
\      'm': 'margin: |;',
\      'mt': 'margin-top: |;',
\      'mr': 'margin-right: |;',
\      'mb': 'margin-bottom: |;',
\      'ml': 'margin-left: |;',
\      'p': 'padding: |;',
\      'pt': 'padding-top: |;',
\      'pr': 'padding-right: |;',
\      'pb': 'padding-bottom: |;',
\      'pl': 'padding-left: |;',
\      'w': 'width: |;',
\      'h': 'height: |;',
\      'h:a': 'height: auto;',
\      'maw': 'max-width: |;',
\      'mah': 'max-height: |;',
\      'miw': 'min-width: |;',
\      'mih': 'min-height: |;',
\      'bg': 'background: |;',
\      'bg:n': 'background: none;',
\      'bgi': 'background-image: url(|);',
\      'bgr': 'background-repeat: |;',
\      'lis': 'list-style: |;',
\      'va': 'vertical-align: |;',
\      'va:sup': 'vertical-align: super;',
\      'va:t': 'vertical-align: top;',
\      'va:tt': 'vertical-align: text-top;',
\      'va:m': 'vertical-align: middle;',
\      'va:bl': 'vertical-align: baseline;',
\      'va:b': 'vertical-align: bottom;',
\      'va:tb': 'vertical-align: text-bottom;',
\      'va:sub': 'vertical-align: sub;',
\      'ta': 'text-align: |;',
\      'ta:l': 'text-align: left;',
\      'ta:c': 'text-align: center;',
\      'ta:r': 'text-align: right;',
\      'td': 'text-decoration: |;',
\      'td:n': 'text-decoration: none;',
\      'td:u': 'text-decoration: underline;',
\      'ti': 'text-indent: |;',
\      'ti:-': 'text-indent: -9999px;',
\      'tt': 'text-transform: |;',
\      'tt:n': 'text-transform: none;',
\      'tt:u': 'text-transform: uppercase;',
\      'tt:l': 'text-transform: lowercase;',
\      'tsh': 'text-shadow: |;',
\      'tsh:n': 'text-shadow: none;',
\      'lh': 'line-height: |;',
\      'lts': 'letter-spacing: |;',
\      'f': 'font: |;',
\      'f+': 'font: 1em Arial,sans-serif;',
\      'fw': 'font-weight: |;',
\      'fw:n': 'font-weight: normal;',
\      'fw:b': 'font-weight: bold;',
\      'fw:br': 'font-weight: bolder;',
\      'ff': 'font-family: |;',
\      'op': 'opacity: |;',
\      'cur': 'cursor: |;',
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
