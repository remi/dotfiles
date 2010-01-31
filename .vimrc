" ----------------------------------------------------------------------------------------------------
"
" @file         .vimrc
" @description  Vim configuration file
" @author       Rémi Prévost remi-exomel-com
" @version      20100130
"
" ----------------------------------------------------------------------------------------------------

" Change the working path each time we switch buffers
" ----------------------------------------------------------------------------------------------------
au BufEnter * cd %:p:h

" Define the leader key
" ----------------------------------------------------------------------------------------------------
let mapleader = ","
let g:mapleader = ","

" Activate syntax highlithing
" ----------------------------------------------------------------------------------------------------
syntax on

" Activate 256 colors mode (to use in terminal mode)
" ----------------------------------------------------------------------------------------------------
set t_Co=256

" Move the cursor to its last location in the file
" ----------------------------------------------------------------------------------------------------
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" Activate filetype-based indent settings
" ----------------------------------------------------------------------------------------------------
filetype indent on

" Misc. options
" ----------------------------------------------------------------------------------------------------
set showcmd " Display the command as we type it
set showmode " Display the current mode
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
set autoindent " Code auto-indent
set smartindent " Smart code auto-indent
set showtabline=2 " Always display tabs
set hlsearch " Highlight matching search result
set vb t_vb= " No visual bell
set viminfo='50,<1000,s100,h,n~/.vim-local/.viminfo " Viminfo settings

set noeol
set wildmenu
set wildmode=full
set switchbuf=useopen

" Always use UTF-8
" ----------------------------------------------------------------------------------------------------
set encoding=utf-8
set fileencoding=utf-8

" Do not highlight special PHP functions (to ensure compatibility with most color schemes)
" ----------------------------------------------------------------------------------------------------
let php_special_functions = 0

" Backups
" ----------------------------------------------------------------------------------------------------
set backup
set swapfile
set backupdir=$HOME/.vim-local/.vimbackup
set directory=$HOME/.vim-local/.vimswap
au BufEnter /private/tmp/crontab.* setl backupcopy=yes

" No automatic word-wrap!
" ----------------------------------------------------------------------------------------------------
set nowrap 
set sidescroll=4
set listchars+=precedes:←,extends:→

" I often wrongly press 'Shift' in visual mode…
" ----------------------------------------------------------------------------------------------------
vnoremap <S-Up> k
vnoremap <S-Down> j

" Easy split navigation
" ----------------------------------------------------------------------------------------------------
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
noremap <C-K> <C-W>k
noremap <C-J> <C-W>j

" Because 'CTRL-T' is easier to type on a canadian keyboard
" ----------------------------------------------------------------------------------------------------
noremap <C-T> <C-]>

" Easy line moving
" ----------------------------------------------------------------------------------------------------
noremap <C-Up> ddkkp
noremap <C-Down> ddp

" Easy tab navigation
" ----------------------------------------------------------------------------------------------------
noremap <S-C-Tab> :tabprevious<CR>
inoremap <S-C-Tab> <Esc>:tabprevious<CR>
vnoremap <S-C-Tab> <Esc>:tabprevious<CR>
noremap <C-Tab> :tabnext<CR>
inoremap <C-Tab> <Esc>:tabnext<CR>
vnoremap <C-Tab> <Esc>:tabnext<CR>

noremap <M-D-Left> <Esc>:tabprevious<CR>
noremap <M-D-Right> <Esc>:tabnext<CR>

" Reload the current file
" ----------------------------------------------------------------------------------------------------
noremap <D-r> :e<CR>

" Add pairs of matching curly braces
" ----------------------------------------------------------------------------------------------------
inoremap ;{ {<CR><CR>}<Esc>ki<Tab>
noremap ;{ i{<CR><CR>}<Esc>ki<Tab>

" Select a line until its ending
" ----------------------------------------------------------------------------------------------------
vnoremap # $h

" Execute the current file with Python
" ----------------------------------------------------------------------------------------------------
noremap <F2> :!python %<cr>

" Function keys
" ----------------------------------------------------------------------------------------------------
noremap <F9> :set list!<Bar>set list?<CR>
noremap <F8> :set wrap!<Bar>set wrap?<CR>
noremap <F10> :set paste!<Bar>set paste?<CR>
noremap <F11> :set expandtab!<Bar>set expandtab?<CR>

" Insert current date
" ----------------------------------------------------------------------------------------------------
" format YYYYMMDD (eg. 20100105)
inoremap <D-d> <C-R>=strftime("%Y%m%d")<CR>
noremap ª cw<C-R>=strftime("%Y%m%d")<CR><Esc>b
" format ISO 8601 (eg. 2010-01-05T20:51:15-0500)
inoremap <D-D> <C-R>=strftime("%Y-%m-%dT%H:%M:%S%z")<CR>
noremap ˇ cw<C-R>=strftime("%Y-%m-%dT%H:%M:%S%z")<CR><Esc>b

" Duplicate line
" ----------------------------------------------------------------------------------------------------
noremap <D-d> yyP
vnoremap <D-d> y'>p

" Select only the text caracters in the current line
" ----------------------------------------------------------------------------------------------------
noremap √ ^v$

" Easy indentation in visual mode
" ----------------------------------------------------------------------------------------------------
vnoremap < <gv
vnoremap > >gv|
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv

" Clear search-highlighted terms
" ----------------------------------------------------------------------------------------------------
noremap <silent> <Space> :silent noh<Bar>echo<CR>

" Activate filetype plugins
" ----------------------------------------------------------------------------------------------------
filetype on
filetype plugin on

" html.vim settings
" ----------------------------------------------------------------------------------------------------
let g:do_xhtml_mappings = 'yes'
let g:no_html_toolbar = 'yes'
let g:no_html_menu = 'yes'

" Different colorschemes if we're running vim or gvim
" ----------------------------------------------------------------------------------------------------
if !has('gui_running')
	syntax on
	colorscheme camo
else
	syntax on
	colorscheme twilight3
endif

" NERDTree settings
" ----------------------------------------------------------------------------------------------------
map <Leader>, :NERDTreeToggle %:p:h<cr>
map <Leader>f :NERDTreeFind<cr>
map <Leader>v :NERDTree /Volumes/<cr>
map <Leader>c :NERDTree 
let NERDTreeShowHidden=1
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore = ['\~$', '^\._', '^\.git$']

" Syntastic settings
" ----------------------------------------------------------------------------------------------------
map <Leader>e :Errors<CR>

" Taglist settings
" ----------------------------------------------------------------------------------------------------
map éé :TlistToggle<cr>
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Use_Right_Window = 1
let Tlist_Close_On_Select = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "name"

" Fast save
" ----------------------------------------------------------------------------------------------------
nmap <leader>w :w!<cr>

" Insert a new line
" ----------------------------------------------------------------------------------------------------
map K <Esc>i<CR><Esc><Esc>

" We often press 'Shift' when we should not
" ----------------------------------------------------------------------------------------------------
command! Q q
command! W w
command! Wq wq
command! WQ wq

" CamelCaseMotion settings
" ----------------------------------------------------------------------------------------------------
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" Statusline
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

" Add a new '/' text object
" ----------------------------------------------------------------------------------------------------
onoremap i/ :normal T/vt/<CR>
onoremap a/ :normal F/vf/<CR>
vnoremap i/ t/oT/
vnoremap a/ f/oF/

" FuzzyFinder settings
" ----------------------------------------------------------------------------------------------------
map <Leader>o :FufFileWithCurrentBufferDir<CR>
map <Leader>d :FufDir<CR>
let g:fuf_keyPreview = '<C-k>'
let g:fuf_keyOpenVsplit = ''
let g:fuf_infoFile = '~/.vim-local/.vimfuf'

" Supertab settings
" ----------------------------------------------------------------------------------------------------
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = 'context'

" We log each file opening in an external file
" ----------------------------------------------------------------------------------------------------
function! LogEachFile()
	if &buftype != 'help'
		redir >> ~/.vim-local/.vimlog
			echo "(".strftime("%F %T").")  ".expand("%:p")
		redir END
	endif
endfunction
autocmd! BufReadPre * silent call LogEachFile()

" MRU settings
" ----------------------------------------------------------------------------------------------------
let MRU_File = "/Users/remi/.vim-local/.vimmru"
map <Leader>m :MRU<CR>

" Strip HTML tags in selected line
" ----------------------------------------------------------------------------------------------------
vnoremap <Leader>h :s/<\/*\([a-z][a-z0-9]*\)[^>]*>//g<CR><Esc>:silent noh<Bar>echo<CR>
