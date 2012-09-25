" Remove support for regular system-wide bindings
" ----------------------------------------------------------------------------------------------------
nnoremap <Up> <Esc>
vnoremap <Up> <NOP>
inoremap <Up> <NOP>
nnoremap <Down> <Esc>
vnoremap <Down> <NOP>
inoremap <Down> <NOP>
nnoremap <Left> <Esc>
vnoremap <Left> <NOP>
inoremap <Left> <NOP>
nnoremap <Right> <Esc>
vnoremap <Right> <NOP>
inoremap <Right> <NOP>

" Easy fold navigation
" ----------------------------------------------------------------------------------------------------
noremap <silent> <D-J> <Nop>
noremap <silent> <D-K> <Nop>
noremap <silent> ∆ zj
noremap <silent> ˚ zk
noremap <silent>  za
noremap <silent> <S-CR> zMzo

" Easy lines navigation
" ----------------------------------------------------------------------------------------------------
noremap <silent> <D-j> gj
noremap <silent> <D-k> gk

" Easy new lines
" ----------------------------------------------------------------------------------------------------
noremap <silent> ø mo<Esc>o<Esc>k`o
noremap <silent> Ø mo<Esc>O<Esc>j`o
map K <Esc>i<CR><Esc><Esc>

" Always go to the mark’s line and column
" ----------------------------------------------------------------------------------------------------
noremap ' `
vnoremap ' `
noremap g' g`
vnoremap g' g`

" Remap ^ caracters
" ----------------------------------------------------------------------------------------------------
noremap â ^a
noremap î ^i
noremap ô ^o

" Add a new Text Objects
" ----------------------------------------------------------------------------------------------------
onoremap i/ :normal T/vt/<CR>
vnoremap i/ t/oT/
onoremap a/ :normal F/vf/<CR>
vnoremap a/ f/oF/
onoremap i\| :normal T\|vt\|<CR>
vnoremap i\| t\|oT\|
onoremap a\| :normal F\|vf\|<CR>
vnoremap a\| f\|oF\|

" We often press 'Shift' when we should not
" ----------------------------------------------------------------------------------------------------
command! -nargs=* -complete=file Q q <args>
command! -nargs=* -complete=file W w <args>
command! -nargs=* -complete=file Wq wq <args>
command! -nargs=* -complete=file WQ wq <args>
command! -nargs=* -complete=file E e <args>
command! -nargs=* -complete=file Cd cd <args>
command! -nargs=* -complete=file CD cd <args>
command! -nargs=* -complete=option Set set <args>

" Remap Enter and Backspace
" ----------------------------------------------------------------------------------------------------
vnoremap  <NOP>
vnoremap <BS> dk$

" Easy split navigation
" ----------------------------------------------------------------------------------------------------
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
noremap <C-K> <C-W>k
noremap <C-J> <C-W>j
nnoremap <C-c> <C-W>c<CR>

" Because 'CTRL-T' is easier to type on a canadian keyboard
" ----------------------------------------------------------------------------------------------------
noremap <C-T> <C-]>

" Easy line moving
" ----------------------------------------------------------------------------------------------------
noremap <C-Up> ddkkp
noremap <C-Down> ddp
" }}}

" Easy tab navigation
" ----------------------------------------------------------------------------------------------------
noremap <S-C-Tab> :bprevious<CR>
inoremap <S-C-Tab> <Esc>:bprevious<CR>
vnoremap <S-C-Tab> <Esc>:bprevious<CR>
noremap <C-Tab> :bnext<CR>
inoremap <C-Tab> <Esc>:bnext<CR>
vnoremap <C-Tab> <Esc>:bnext<CR>

" Function keys
" ----------------------------------------------------------------------------------------------------
noremap <F9> :setl list!<Bar>setl list?<CR>
noremap <F8> :setl wrap! linebreak! nolist!<Bar>setl wrap?<CR>
noremap <F10> :setl paste!<Bar>setl paste?<CR>
noremap <F11> :setl expandtab!<Bar>setl expandtab?<CR>

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
noremap <D-d> m'yyP`'k
vnoremap <D-d> m'y'>p`'

" Select only the text caracters in the current line
" ----------------------------------------------------------------------------------------------------
noremap √ ^v$h

" Easy indentation in visual mode
" ----------------------------------------------------------------------------------------------------
vnoremap < <gv
vnoremap > >gv|
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv
nnoremap  <C-i>
nnoremap <Tab> mzV>`zl
nnoremap <S-Tab> mzV<`zh

" Clear search-highlighted terms
" ----------------------------------------------------------------------------------------------------
noremap <silent> <Space> :silent noh<Bar>echo<CR>

" Easy Vim folds insert
inoremap ;zo {{{<Esc>
inoremap ;zc }}}<Esc>

" Prevent accidental uses of <F1>
" ----------------------------------------------------------------------------------------------------
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Show syntax highlighting groups for word under cursor
" ----------------------------------------------------------------------------------------------------
nmap <D-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Change the working directory to the current file directory
" ----------------------------------------------------------------------------------------------------
noremap èè :lcd %:p:h<CR>

" Toggle Scratch buffer
" Credit: http://weblog.jamisbuck.org/2008/11/17/vim-follow-up
" ----------------------------------------------------------------------------------------------------
function! ToggleScratch()
  if expand('%') == g:ScratchBufferName
    quit
  else
    Sscratch
  endif
endfunction
map <leader>x :call ToggleScratch()<CR>

" Use Alt-4 to go to the end of the line, but not totally.
" ----------------------------------------------------------------------------------------------------
noremap € $h

" Tmux-like split panes navigation
" ----------------------------------------------------------------------------------------------------
noremap <C-A>% :vsplit<CR><C-W>l
noremap <C-A>s :split<CR><C-W>j
noremap <C-A>h <C-W>h
noremap <C-A>l <C-W>l
noremap <C-A>k <C-W>k
noremap <C-A>j <C-W>j

" Execute the current file
" ----------------------------------------------------------------------------------------------------
function! CallInterpreter()
  if match(getline(1), '^\#!') == 0
    let l:interpreter = getline(1)[2:]
    exec ("!".l:interpreter." %:p")
  else
    echohl ErrorMsg | echo "Err: No shebang present in file, canceling execution" | echohl None
  endif
endfunction
silent! unmap <Leader>rm
silent! unmap <Leader>rv
silent! unmap <Leader>rc
map <Leader>r :call CallInterpreter()<CR>

" Toggle
" ----------------------------------------------------------------------------------------------------
function! g:ToggleNuMode()
  if(&rnu == 1)
    set nu
  else
    set rnu
  endif
endfunc

nnoremap <C-L> :call g:ToggleNuMode()<cr>
