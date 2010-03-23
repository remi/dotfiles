" ----------------------------------------------------------------------------------------------------
"
" @file         .vimrc
" @description  Vim configuration file
" @author       Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
"
" ----------------------------------------------------------------------------------------------------

" Change the working path each time we switch buffers {{{
" ----------------------------------------------------------------------------------------------------
au BufEnter * lcd %:p:h
" }}}

" Define the leader key {{{
" ----------------------------------------------------------------------------------------------------
let mapleader = ","
let g:mapleader = ","
" }}}

" Activate syntax highlithing {{{
" ----------------------------------------------------------------------------------------------------
syntax on
" }}}

" Activate 256 colors mode (to use in terminal mode) {{{
" ----------------------------------------------------------------------------------------------------
set t_Co=256
" }}}

" Move the cursor to its last location in the file {{{
" ----------------------------------------------------------------------------------------------------
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
" }}}

" Activate filetype-based indent settings {{{
" ----------------------------------------------------------------------------------------------------
filetype indent on
" }}}

" Misc. options {{{
" ----------------------------------------------------------------------------------------------------
set showcmd " Display the command as we type it
set showmode " Display the current mode
set ignorecase " Ignore case when searching
set smartcase " Smart-case search mode
set incsearch " Start to search as soon as we type
set mouse=a " Use the mouse in all modes
set number " Show line numbers
set ts=4 " A tab = 4 spaces
let &shiftwidth=&ts
let softtabstop=&ts
set whichwrap=h,l,~,[,],<,> " Which caracters to wrap
set scrolloff=4 " Scroll offset
set laststatus=2 " Always show the status line
set noautoread " Do not reload the file if it changes
set title " Display filename in window title
set showmatch " Show matching parentheses
set noautoindent " Code auto-indent
set nosmartindent " Smart code auto-indent
set cindent
set showtabline=2 " Always display tabs
set hlsearch " Highlight matching search result
set vb t_vb= " No visual bell
set viminfo='50,<1000,s100,h,n~/.vim-local/.viminfo " Viminfo settings
set mls=10 " Check for modelines in the first and last 10 lines

set noeol
set wildmenu
set wildmode=full
set switchbuf=useopen
" }}}

" Always use UTF-8 {{{
" ----------------------------------------------------------------------------------------------------
set encoding=utf-8
set fileencoding=utf-8
" }}}

" Do not highlight special PHP functions (to ensure compatibility with most color schemes) {{{
" ----------------------------------------------------------------------------------------------------
let php_special_functions = 0
" }}}

" Backups {{{
" ----------------------------------------------------------------------------------------------------
set backup
set swapfile
set backupdir=$HOME/.vim-local/.vimbackup
set directory=$HOME/.vim-local/.vimswap
au BufEnter /private/tmp/crontab.* setl backupcopy=yes
" }}}

" No automatic word-wrap! {{{
" ----------------------------------------------------------------------------------------------------
set nowrap
set sidescroll=4
set listchars=precedes:←,extends:→,nbsp:◊,trail:⠿,tab:\|·,eol:\ 
set list

" }}}

" Let's remap Enter and Backspace {{{
" ----------------------------------------------------------------------------------------------------
vnoremap  <silent>
vnoremap <BS> hx
set backspace=indent,eol,start
" }}}

" I often wrongly press 'Shift' in visual mode… {{{
" ----------------------------------------------------------------------------------------------------
vnoremap <S-Up> k
vnoremap <S-Down> j
" }}}

" Easy split navigation {{{
" ----------------------------------------------------------------------------------------------------
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
noremap <C-K> <C-W>k
noremap <C-J> <C-W>j
" }}}

" Because 'CTRL-T' is easier to type on a canadian keyboard {{{
" ----------------------------------------------------------------------------------------------------
noremap <C-T> <C-]>
" }}}

" Easy line moving {{{
" ----------------------------------------------------------------------------------------------------
noremap <C-Up> ddkkp
noremap <C-Down> ddp
" }}}

" Easy tab navigation {{{
" ----------------------------------------------------------------------------------------------------
noremap <S-C-Tab> :tabprevious<CR>
inoremap <S-C-Tab> <Esc>:tabprevious<CR>
vnoremap <S-C-Tab> <Esc>:tabprevious<CR>
noremap <C-Tab> :tabnext<CR>
inoremap <C-Tab> <Esc>:tabnext<CR>
vnoremap <C-Tab> <Esc>:tabnext<CR>

noremap <M-D-Left> <Esc>:tabprevious<CR>
noremap <M-D-Right> <Esc>:tabnext<CR>
" }}}

" Reload the current file {{{
" ----------------------------------------------------------------------------------------------------
noremap <D-r> :e<CR>
" }}}

" Select a line until its ending {{{
" ----------------------------------------------------------------------------------------------------
vnoremap # $h
" }}}

" Execute the current file with Python {{{
" ----------------------------------------------------------------------------------------------------
noremap <F2> :!python %<cr>
" }}}

" Function keys {{{
" ----------------------------------------------------------------------------------------------------
"noremap <F5> ?
"noremap <F6> ?
"noremap <F7> ?
noremap <F9> :set list!<Bar>set list?<CR>
noremap <F8> :set wrap!<Bar>set wrap?<CR>
noremap <F10> :set paste!<Bar>set paste?<CR>
noremap <F11> :set expandtab!<Bar>set expandtab?<CR>
" }}}

" Insert current date {{{
" ----------------------------------------------------------------------------------------------------
" format YYYYMMDD (eg. 20100105)
inoremap <D-d> <C-R>=strftime("%Y%m%d")<CR>
noremap ª cw<C-R>=strftime("%Y%m%d")<CR><Esc>b
" format ISO 8601 (eg. 2010-01-05T20:51:15-0500)
inoremap <D-D> <C-R>=strftime("%Y-%m-%dT%H:%M:%S%z")<CR>
noremap ˇ cw<C-R>=strftime("%Y-%m-%dT%H:%M:%S%z")<CR><Esc>b
" }}}

" Duplicate line {{{
" ----------------------------------------------------------------------------------------------------
noremap <D-d> m'yyP`'k
vnoremap <D-d> m'y'>p`'
" }}}

" Source the current file {{{
" ----------------------------------------------------------------------------------------------------
nmap <Leader>so :source %<CR>
" }}}

" Select only the text caracters in the current line {{{
" ----------------------------------------------------------------------------------------------------
noremap √ ^v$h
" }}}

" Easy indentation in visual mode {{{
" ----------------------------------------------------------------------------------------------------
vnoremap < <gv
vnoremap > >gv|
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv
" }}}

" Clear search-highlighted terms {{{
" ----------------------------------------------------------------------------------------------------
noremap <silent> <Space> :silent noh<Bar>echo<CR>
" }}}

" Activate filetype plugins {{{
" ----------------------------------------------------------------------------------------------------
filetype on
filetype plugin on
" }}}

" html.vim settings {{{
" ----------------------------------------------------------------------------------------------------
let g:do_xhtml_mappings = 'yes'
let g:no_html_toolbar = 'yes'
let g:no_html_menu = 'yes'
" }}}

" Different colorschemes if we're running vim or gvim {{{
" ----------------------------------------------------------------------------------------------------
if !has('gui_running')
	syntax on
	colorscheme camo
else
	syntax on
	colorscheme twilight3
endif
" }}}

" NERDTree settings {{{
" ----------------------------------------------------------------------------------------------------
map <Leader>, :NERDTreeToggle %:p:h<cr>
map <Leader>f :NERDTreeFind<cr>
map <Leader>v :NERDTree /Volumes/<cr>
map <Leader>c :NERDTree
let NERDTreeBookmarksFile=expand('$HOME').'/.vim-local/.NERDTreeBookmarks'
let NERDTreeShowHidden=1
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore = ['\~$', '^\._', '^\.git$']
autocmd BufEnter NERD_tree_* set scrolloff=0 cursorline
autocmd BufLeave NERD_tree_* set scrolloff=4 nocursorline
" }}}

" Taglist settings {{{
" ----------------------------------------------------------------------------------------------------
map éé :TlistToggle<cr>
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Use_Right_Window = 1
let Tlist_Close_On_Select = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "name"
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
" }}}

" Fast save {{{
" ----------------------------------------------------------------------------------------------------
nmap <leader>w :w!<cr>
" }}}

" Trim whitespace {{{
" ----------------------------------------------------------------------------------------------------
noremap <Leader>t m':%s!\s*$!!g<CR>:silent noh<Bar>echo<CR>`'
" }}}

" Insert a new line {{{
" ----------------------------------------------------------------------------------------------------
map K <Esc>i<CR><Esc><Esc>
" }}}

" We often press 'Shift' when we should not {{{
" ----------------------------------------------------------------------------------------------------
command! Q q
command! W w
command! Wq wq
command! WQ wq
" }}}

" CamelCaseMotion settings {{{
" ----------------------------------------------------------------------------------------------------
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e
" }}}

" Statusline {{{
" ----------------------------------------------------------------------------------------------------
function! GetCWD()
	return expand(":pwd")
endfunction

function! IsHelp()
	return &buftype=='help'?' (help) ':''
endfunction

function! GetName()
	return expand("%")==''?'<none>':expand("%")
endfunction

set statusline=%3*[%1*%{GetName()}%3*]%*
set statusline+=%7*%{&modified?'\ (modified)':'\ '}%*
set statusline+=%5*%{IsHelp()}%*
set statusline+=%6*%{&readonly?'\ (read-only)\ ':'\ '}%*
set statusline+=%3*fenc:%*%{strlen(&fenc)?&fenc:'none'}%*\ \ 
set statusline+=%3*ff:%*%{&ff}%*\ \ 
set statusline+=%3*ft:%*%{strlen(&ft)?&ft:'<none>'}\ \ 
set statusline+=%<%3*pwd:%*%{getcwd()}\ \ 
set statusline+=%=
set statusline+=%3*col:%*%c\ \ 
set statusline+=%3*line:%*%l\ \ 
set statusline+=%3*total:%*%L\ 
" }}}

" Add a new '/' text object {{{
" ----------------------------------------------------------------------------------------------------
onoremap i/ :normal T/vt/<CR>
onoremap a/ :normal F/vf/<CR>
vnoremap i/ t/oT/
vnoremap a/ f/oF/
" }}}

" FuzzyFinder settings {{{
" ----------------------------------------------------------------------------------------------------
map <Leader>o :FufFileWithCurrentBufferDir<CR>
map <Leader>d :FufDir<CR>
let g:fuf_keyPreview = '<C-k>'
let g:fuf_keyOpenVsplit = ''
let g:fuf_infoFile = '~/.vim-local/.vimfuf'
" }}}

" Supertab settings {{{
" ----------------------------------------------------------------------------------------------------
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = '<c-p>'
" }}}

" We log each file opening in an external file {{{
" ----------------------------------------------------------------------------------------------------
function! LogEachFile()
	if &buftype != 'help'
		redir >> ~/.vim-local/.vimlog
			echo "(".strftime("%F %T").")  ".expand("%:p")
		redir END
	endif
endfunction
autocmd! BufReadPre * silent call LogEachFile()
" }}}

" MRU settings {{{
" ----------------------------------------------------------------------------------------------------
let MRU_File=expand("$HOME")."/.vim-local/.vimmru"
let MRU_Window_Height = 15
map <Leader>m :MRU<CR>
autocmd BufEnter __MRU_Files__ set scrolloff=0 cursorline
autocmd BufLeave __MRU_Files__ set scrolloff=4 nocursorline
" }}}

" Strip HTML tags in selected line {{{
" ----------------------------------------------------------------------------------------------------
vnoremap <Leader>h :s/<\/*\([a-z][a-z0-9]*\)[^>]*>//g<CR><Esc>:silent noh<Bar>echo<CR>
" }}}

" Create a backup file for each save {{{
" ----------------------------------------------------------------------------------------------------
function! StampBackup()
	if expand('%:t') != ""
		let bup = globpath(&backupdir, expand('%:t') . &bex)
		if bup != ""
			let stamp = ".".strftime("%y.%m.%d_%H.%M.%S")
			if expand('%:t') =~# '\M.'  " maybe use =~? on windows
				let stamped = substitute(bup, '\M.\(\[^.]\*\)' . &bex . '$', stamp . '.' . '\1', '')
			else " file has no suffix
				let stamped = substitute(bup, '\M' . &bex. '$', stamp, '')
			endif
			if rename(bup, stamped)
				echoerr "failed rename of backup " . bup . " to " .  stamped
			endif
		endif
	endif
endfunction

augroup StampBackup
    au! BufWritePost,FileWritePost * call StampBackup()
augroup END
" }}}

" Easy fold navigation {{{
" ----------------------------------------------------------------------------------------------------
noremap <silent> <CR> zo
noremap <silent> <S-CR> za
noremap <silent> <S-D-CR> zMzo
noremap <silent> <S-D-Up> zk
noremap <silent> <S-D-Down> zj
" }}}

" Easy blank lines {{{
" ----------------------------------------------------------------------------------------------------
noremap <silent> ø <Esc>o<Esc>k
noremap <silent> Ø <Esc>O<Esc>j

" }}}

" YankRing {{{
" ----------------------------------------------------------------------------------------------------
let g:yankring_history_dir = expand('$HOME').'/.vim-local'
let g:yankring_history_file = '.vim-yankring'
map <Leader>y :YRShow<CR>
autocmd BufEnter \[YankRing\] set scrolloff=0 cursorline
autocmd BufLeave \[YankRing\] set scrolloff=4 nocursorline
" }}}

" Always go to the mark’s line and column {{{
" ----------------------------------------------------------------------------------------------------
noremap ' `
vnoremap ' `
noremap g' g`
vnoremap g' g`
" }}}

" Reload snipMate snippet {{{
" ----------------------------------------------------------------------------------------------------
nmap ,rr :call ReloadSnippets(&filetype)<CR>
" }}}

" Remap ^ caracters {{{
" ----------------------------------------------------------------------------------------------------
noremap â ^a
noremap î ^i
noremap ô ^o
" }}}
