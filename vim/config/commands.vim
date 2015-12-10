" We often press 'Shift' when we should not
" ----------------------------------------------------------------------------------------------------
command! -nargs=* -bang -complete=file Q q <args>
command! -nargs=* -bang -complete=file W w <args>
command! -nargs=* -bang -complete=file Wq wq <args>
command! -nargs=* -bang -complete=file WQ wq <args>
command! -nargs=* -bang -complete=file E e <args>
command! -nargs=* -complete=file Cd cd <args>
command! -nargs=* -complete=file CD cd <args>
command! -nargs=* -complete=option Set set <args>
command! -nargs=* -complete=file So so <args>

" Rename current file
" ----------------------------------------------------------------------------------------------------
command! -nargs=* -complete=file -bang Rename call Rename(<q-args>, '<bang>')
command! -nargs=* -complete=file -bang RenameFile call Rename(expand('%:p:h') . '/' . <q-args>, '<bang>')
