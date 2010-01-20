" ----------------------------------------------------------------------------------------------------
"
" @file         .vimrc
" @description  Fichier de configuration pour vim
" @author       Remi Prevost remi-exomel-com
" @version      20100119
"
" ----------------------------------------------------------------------------------------------------

" On change le `working directory` chaque fois qu’on change de fichier
" ----------------------------------------------------------------------------------------------------
au BufEnter * cd %:p:h

" On définit la virgule comme touche 'leader'
" ----------------------------------------------------------------------------------------------------
let mapleader = ","
let g:mapleader = ","

" Active la coloration de la syntaxe
" ----------------------------------------------------------------------------------------------------
syntax on

" Active le mode 256 couleurs (parce qu'on l'utilise souvent en remote!)
" ----------------------------------------------------------------------------------------------------
set t_Co=256

" Place le curseur là où il était lors de la fermeture
" ----------------------------------------------------------------------------------------------------
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" Détecteur automatique les règles d'indentation
" ----------------------------------------------------------------------------------------------------
filetype indent on

" Options diverses
" ----------------------------------------------------------------------------------------------------
set showcmd " Affiche la commande qui est en train d’être entrée
set showmode " Affiche le mode actuel
set smartcase " Recherche intelligente
set incsearch " Recherche incrémentale
set mouse=a " Active la souris dans tous les modes
set number " Affiche les numéros de ligne
set ruler " Affiche la position du curseur dans le fichier
set ignorecase " Ignore la casse lors des recherches
set ts=4 " Une tabulation = 4 caractères
set shiftwidth=4 " Une tabulation = 4 caractères
set softtabstop=4 " Une tabulation = 4 caractères
set whichwrap=h,l,~,[,],<,> " À quel caractère on doit 'wrapper'
set scrolloff=4 " Nombre de lignes à toujours afficher à partir du bas/haut de la fenêtre
set laststatus=2 " On montre toujours la barre de status
set noautoread " On ne recharge un fichier s'il a changé
set title " Le nom du fichier dans le titre de la fenêtre
set showmatch " Met en surbrillance les parenthèses
set autoindent " Auto-indentation du code
set smartindent " Auto-indentation intelligente
set showtabline=2 " On affiche toujours les onglets
set hlsearch " On met en surbrillance le terme recherché
set vb t_vb= " Pas de bell

set noeol
set wildmenu
set wildmode=full
set switchbuf=useopen

" Encodage du fichier (toujours UTF-8!)
" ----------------------------------------------------------------------------------------------------
set encoding=utf-8
set fileencoding=utf-8

" On empêche la mise en surbrillance spéciale de certaines fonctions PHP
" ----------------------------------------------------------------------------------------------------
let php_special_functions = 0

" Backups
" ----------------------------------------------------------------------------------------------------
set noswapfile " pas de blablabla.swp!
set backup
set backupdir=$HOME/.vimbackup
au BufEnter /private/tmp/crontab.* setl backupcopy=yes

" Pas de retour à la ligne automatique!
" ----------------------------------------------------------------------------------------------------
set nowrap 
set sidescroll=4
set listchars+=precedes:←,extends:→

" On accroche souvent Shift-Up et Shift-Down en mode visuel...
" ----------------------------------------------------------------------------------------------------
vnoremap <S-Up> k
vnoremap <S-Down> j

" Permet une navigation plus facile entre les différents splits
" ----------------------------------------------------------------------------------------------------
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
noremap <C-K> <C-W>k
noremap <C-J> <C-W>j

" Parce que CTRL-], c'est pas facile sur un clavier canadien
" ----------------------------------------------------------------------------------------------------
noremap <C-T> <C-]>

" Déplacer des lignes facilement
" ----------------------------------------------------------------------------------------------------
noremap <C-Up> ddkkp
noremap <C-Down> ddp

" Navigation par onglets
" ----------------------------------------------------------------------------------------------------
noremap <S-C-Tab> :tabprevious<CR>
inoremap <S-C-Tab> <Esc>:tabprevious<CR>
vnoremap <S-C-Tab> <Esc>:tabprevious<CR>
noremap <C-Tab> :tabnext<CR>
inoremap <C-Tab> <Esc>:tabnext<CR>
vnoremap <C-Tab> <Esc>:tabnext<CR>

noremap <M-D-Left> <Esc>:tabprevious<CR>
noremap <M-D-Right> <Esc>:tabnext<CR>

" Rafraichit le fichier actuel
" ----------------------------------------------------------------------------------------------------
noremap <D-r> :e<CR>

" Ajoute des accolades ouvrantes et fermantes
" ----------------------------------------------------------------------------------------------------
inoremap ;{ {<CR><CR>}<Esc>ki<Tab>
noremap ;{ i{<CR><CR>}<Esc>ki<Tab>

" Permet de sélectionner jusqu'à la fin d'une ligne
" ----------------------------------------------------------------------------------------------------
vnoremap # $h

" Exécute le fichier actuel avec python
" ----------------------------------------------------------------------------------------------------
noremap <F2> :!python %<cr>

" Touches de fonctions
" ----------------------------------------------------------------------------------------------------
noremap <F9> :set list!<Bar>set list?<CR>
noremap <F8> :set wrap!<Bar>set wrap?<CR>
noremap <F10> :set paste!<Bar>set paste?<CR>
noremap <F11> :set expandtab!<Bar>set expandtab?<CR>

" Insère la date courrante
" ----------------------------------------------------------------------------------------------------
" format YYYYMMDD (eg. 20100105)
inoremap <D-d> <C-R>=strftime("%Y%m%d")<CR>
noremap ª cw<C-R>=strftime("%Y%m%d")<CR><Esc>b
" format ISO 8601 (eg. 2010-01-05T20:51:15-0500)
inoremap <D-D> <C-R>=strftime("%Y-%m-%dT%H:%M:%S%z")<CR>
noremap ˇ cw<C-R>=strftime("%Y-%m-%dT%H:%M:%S%z")<CR><Esc>b

" Duplique la ligne
" ----------------------------------------------------------------------------------------------------
noremap <D-d> yyP
vnoremap <D-d> y'>p

" Sélectionne uniquement le texte de la ligne
" ----------------------------------------------------------------------------------------------------
noremap √ ^v$

" Sélectionne uniquement le mot actuel
" ----------------------------------------------------------------------------------------------------
noremap ∑ ebve

" Indentation plus intuitive en mode visuel
" ----------------------------------------------------------------------------------------------------
vnoremap < <gv
vnoremap > >gv|
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv

" Claire les termes mis en surbrillance
" ----------------------------------------------------------------------------------------------------
noremap <silent> <Space> :silent noh<Bar>echo<CR>

" Active le support des plugins spécifiques à un type de fichier
" ----------------------------------------------------------------------------------------------------
filetype on
filetype plugin on

" Configuration du plugin html.vim
" ----------------------------------------------------------------------------------------------------
let g:do_xhtml_mappings = 'yes'
let g:no_html_toolbar = 'yes'
let g:no_html_menu = 'yes'


" Schémas de couleurs selon si on roule gvim
" ----------------------------------------------------------------------------------------------------
if !has('gui_running')
	syntax on
	colorscheme camo
endif

" NERDTree
" ----------------------------------------------------------------------------------------------------
map <Leader>, :NERDTreeToggle %:p:h<cr>
map <Leader>f :NERDTreeFind<cr>
map <Leader>v :NERDTree /Volumes/<cr>
map <Leader>c :NERDTree 
let NERDTreeShowHidden=1
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore = ['\~$', '^\._', '^\.git$']

" Syntastic
" ----------------------------------------------------------------------------------------------------
map <Leader>e :Errors<CR>

" Taglist
" ----------------------------------------------------------------------------------------------------
map éé :TlistToggle<cr>
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Use_Right_Window = 1
let Tlist_Close_On_Select = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "name"

" Sauvegarde rapide
" ----------------------------------------------------------------------------------------------------
nmap <leader>w :w!<cr>

" Insère une nouvelle ligne
" ----------------------------------------------------------------------------------------------------
map K <Esc>i<CR><Esc><Esc>

" Commands personnalisées (parce qu'on accroche <Shift> des fois
" ----------------------------------------------------------------------------------------------------
command! Q q
command! W w
command! Wq wq
command! WQ wq

" On veut que `w`, `b` et `e` suive le 'CamelCase'
" ----------------------------------------------------------------------------------------------------
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" On définit la statusline
" ----------------------------------------------------------------------------------------------------
set statusline=
set statusline+=%<%f\ %h%m%r%=
set statusline+=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}
set statusline+=%k\ %-14.(%l,%c%V%)\ %P

" Permet de sélectionner le texte entre deux `/` parce que vim ne le supporte pas nativement
" ----------------------------------------------------------------------------------------------------
onoremap i/ :normal T/vt/<CR>
onoremap a/ :normal F/vf/<CR>
vnoremap i/ t/oT/
vnoremap a/ f/oF/

" FuzzyFinder
" ----------------------------------------------------------------------------------------------------
map <Leader>o :FufFileWithCurrentBufferDir<CR>
map <Leader>d :FufDir<CR>
let g:fuf_keyPreview = '<C-k>'
let g:fuf_keyOpenVsplit = ''

" Strip les balises HTML de la sélection
" ----------------------------------------------------------------------------------------------------
vnoremap <Leader>h :s/<\/*\([a-z][a-z0-9]*\)[^>]*>//g<CR><Esc>:silent noh<Bar>echo<CR>
