" Toggle Ruby code file and spec file
" ----------------------------------------------------------------------------------------------------
function! SpecToggle()
  let l:current_file = expand('%:p:t')

  if match(l:current_file, '_spec.rb') != -1
    let l:alternate_file = substitute(l:current_file, "_spec.rb", ".rb", "g")
  else
    let l:alternate_file = substitute(l:current_file, ".rb", "_spec.rb", "g")
  endif

  let l:cmd = "find . -iname " . l:alternate_file
  let l:file = system(l:cmd)

  exe 'e' expand(l:file)
endfunction

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

" Rename current file
" ----------------------------------------------------------------------------------------------------
" Rename.vim  -  Rename a buffer within Vim and on the disk
"
" Copyright June 2007-2011 by Christian J. Robinson <heptite@gmail.com>
"
" Distributed under the terms of the Vim license.  See ":help license".
"
" Usage:
"
" :Rename[!] {newname}

command! -nargs=* -complete=file -bang Rename call Rename(<q-args>, '<bang>')
command! -nargs=* -complete=file -bang RenameFile call Rename(expand('%:p:h') . '/' . <q-args>, '<bang>')

function! Rename(name, bang)
  let l:name    = a:name
  let l:oldfile = expand('%:p')

  if bufexists(fnamemodify(l:name, ':p'))
    if (a:bang ==# '!')
      silent exe bufnr(fnamemodify(l:name, ':p')) . 'bwipe!'
    else
      echohl ErrorMsg
      echomsg 'A buffer with that name already exists (use ! to override).'
      echohl None
      return 0
    endif
  endif

  let l:status = 1

  let v:errmsg = ''
  silent! exe 'saveas' . a:bang . ' ' . l:name

  if v:errmsg =~# '^$\|^E329'
    let l:lastbufnr = bufnr('$')

    if expand('%:p') !=# l:oldfile && filewritable(expand('%:p'))
      if fnamemodify(bufname(l:lastbufnr), ':p') ==# l:oldfile
        silent exe l:lastbufnr . 'bwipe!'
      else
        echohl ErrorMsg
        echomsg 'Could not wipe out the old buffer for some reason.'
        echohl None
        let l:status = 0
      endif

      if delete(l:oldfile) != 0
        echohl ErrorMsg
        echomsg 'Could not delete the old file: ' . l:oldfile
        echohl None
        let l:status = 0
      endif
    else
      echohl ErrorMsg
      echomsg 'Rename failed for some reason.'
      echohl None
      let l:status = 0
    endif
  else
    echoerr v:errmsg
    let l:status = 0
  endif

  return l:status
endfunction
