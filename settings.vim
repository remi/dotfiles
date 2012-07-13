" Activate syntax highlithing
" ----------------------------------------------------------------------------------------------------
syntax on

" Activate 256 colors mode (to use in terminal mode)
" ----------------------------------------------------------------------------------------------------
set t_Co=256

" Activate filetype plugins
" ----------------------------------------------------------------------------------------------------
filetype on
filetype plugin indent on
filetype indent on

" Activate folds
" ----------------------------------------------------------------------------------------------------
set foldmethod=marker

" Define the leader key
" ----------------------------------------------------------------------------------------------------
let mapleader = ","
let g:mapleader = ","

" Misc. options
" ----------------------------------------------------------------------------------------------------
set showcmd " Display the command as we type it
set showmode " Display the current mode
set ignorecase " Ignore case when searching
set smartcase " Smart-case search mode
set incsearch " Start to search as soon as we type
set mouse=a " Use the mouse in all modes
set number " Show line numbers
set ts=2 " A tab = 4 spaces
set sw=2 " Shift width
set sts=2 " Short tab stop
set et " Use spaces instead of tabs
set whichwrap=h,l,~,[,],<,> " Which caracters to wrap
set scrolloff=4 " Scroll offset
set laststatus=2 " Always show the status line
set noautoread " Do not reload the file if it changes
set title " Display filename in window title
set showmatch " Show matching parentheses
set noautoindent " Code auto-indent
set nosmartindent " Smart code auto-indent
set cindent " Use C-style indent
set showtabline=0 " Always hide tabs
set hlsearch " Highlight matching search result
set vb t_vb= " No visual bell
set viminfo='50,<1000,s100,h,n~/.vim-local/.viminfo " Viminfo settings
set mls=10 " Check for modelines in the first and last 10 lines
set noeol
set wildmenu
set wildmode=full
set switchbuf=useopen
set backspace=indent,eol,start
set tabpagemax=50
set isk+=- " Treat “-” like a word separator (for auto-completion!)
set isk+=? " Treat “?” like a word separator (for auto-completion!)
set hidden " Allow hidden buffers
set gdefault " Always search/replace globally
set shell=bash

" Always use UTF-8
" ----------------------------------------------------------------------------------------------------
set encoding=utf-8
set fileencoding=utf-8

" Backups
" ----------------------------------------------------------------------------------------------------
set backup
set swapfile
set backupdir=$HOME/.vim-local/.vimbackup
set directory=$HOME/.vim-local/.vimswap
au BufEnter /private/tmp/crontab.* setl backupcopy=yes
if exists("+undofile")
  set undofile
  set undodir=~/.vim-local/.undo
endif

" No automatic word-wrap!
" ----------------------------------------------------------------------------------------------------
set nowrap
set sidescroll=4
set sidescrolloff=14
set listchars=precedes:←,extends:→,nbsp:◊,trail:⠿,eol:\ ,tab:●·
set list

" Statusline
" ----------------------------------------------------------------------------------------------------
function! GetCWD()
  return expand(":pwd")
endfunction

function! IsHelp()
  return &buftype=='help'?' (help) ':''
endfunction

function! GetName()
  return expand("%:t")==''?'<none>':expand("%:t")
endfunction

set statusline=%1*\ %{GetName()}\ %3*
set statusline+=%7*%{&modified?'\ (modified)':'\ '}%3*
set statusline+=%5*%{IsHelp()}%3*
set statusline+=%6*%{&readonly?'\ (read-only)\ ':'\ '}%3*
set statusline+=%3*fenc:%4*%{strlen(&fenc)?&fenc:'none'}%3*\ \ 
set statusline+=%3*ff:%4*%{&ff}%3*\ \ 
set statusline+=%3*ft:%4*%{strlen(&ft)?&ft:'<none>'}\ \ 
set statusline+=%3*tab:%4*%{&ts}
set statusline+=%3*,%4*%{&sts}
set statusline+=%3*,%4*%{&sw}
set statusline+=%3*,%4*%{&et?'et':'noet'}\ \ 
set statusline+=%<%3*pwd:%4*%{getcwd()}\ \ 
set statusline+=%3*%=
set statusline+=%3*git:%4*%{GitBranchInfoString()}\ \ 
set statusline+=%3*col:%4*%c\ \ 
set statusline+=%3*line:%4*%l\ \ 
set statusline+=%3*total:%4*%L\ 

" Mark trailing whitespace
" ----------------------------------------------------------------------------------------------------
match Todo /\([N]OCOMMIT\)\|\(\(\t\|\s\)\+$\)/
