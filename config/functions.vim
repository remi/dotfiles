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

" Rename current file
" ----------------------------------------------------------------------------------------------------
" Copyright June 2007-2011 by Christian J. Robinson <heptite@gmail.com>
" Distributed under the terms of the Vim license.  See ":help license".
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

" Clear trailing whitespace
" ----------------------------------------------------------------------------------------------------
function! g:ClearTrailingWhitespace()
  %s/\s\+$//e
endfunc
