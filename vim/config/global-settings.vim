" Set local directory based on Neovim presence
" ----------------------------------------------------------------------------------------------------
if has('nvim')
  let s:vimlocal=$HOME.'/.nvim-local'
else
  let s:vimlocal=$HOME.'/.vim-local'
endif

" Activate syntax highlighting
" ----------------------------------------------------------------------------------------------------
syntax on

" Window title
" ----------------------------------------------------------------------------------------------------
let &titlestring = hostname()
set title

" Activate filetype plugins
" ----------------------------------------------------------------------------------------------------
filetype on
filetype plugin indent on
filetype indent on

" Disable netrw
" ----------------------------------------------------------------------------------------------------
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

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
set mouse=n " Only allow mouse in normal mode
set number " Show line numbers
set ts=2 " A tab = 4 spaces
set sw=2 " Shift width
set sts=2 " Short tab stop
set et " Use spaces instead of tabs
set whichwrap=h,l,~,[,],<,> " Which caracters to wrap
set scrolloff=4 " Scroll offset
set laststatus=3 " Show the status line for the last window only
set noautoread " Do not reload the file if it changes
set title " Display filename in window title
set showmatch " Show matching parentheses
set noautoindent " Code auto-indent
set nosmartindent " Smart code auto-indent
set cindent " Use C-style indent
set showtabline=0 " Always hide tabs
set hlsearch " Highlight matching search result
set vb t_vb= " No visual bell
set mls=10 " Check for modelines in the first and last 10 lines
set noeol
set wildmenu
set wildmode=full
set switchbuf=useopen
set backspace=indent,eol,start
set tabpagemax=50
set isk+=- " Treat “-” like a word separator (for auto-completion!)
set isk+=? " Treat “?” like a word separator (for auto-completion!)
set isk+=! " Treat “!” like a word separator (for auto-completion!)
set hidden " Allow hidden buffers
set gdefault " Always search/replace globally
set shell=zsh
set clipboard=unnamed " Make sure we can copy-paste into the system clipboard
set nostartofline
set lazyredraw " Do not redraw screen in non-essential situations
set inccommand=nosplit

" Viminfo
" ----------------------------------------------------------------------------------------------------
execute "set viminfo=".'''50,<1000,s100,h,n'.s:vimlocal.'/info'

" Always use UTF-8
" ----------------------------------------------------------------------------------------------------
if !has('nvim')
  set encoding=utf-8
  set fileencoding=utf-8
end

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

" No automatic word-wrap!
" ----------------------------------------------------------------------------------------------------
set nowrap
set sidescroll=4
set sidescrolloff=14
set listchars=precedes:←,extends:→,nbsp:◊,trail:⠿,eol:\ ,tab:●·
set list

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
