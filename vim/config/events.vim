" Move the cursor to its last location in the file
" ----------------------------------------------------------------------------------------------------
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" Strip trailing whitespace on save
" ----------------------------------------------------------------------------------------------------
autocmd FileType * autocmd BufWritePre <buffer> :call StripTrailingWhitespace()

" QuickFix
" ----------------------------------------------------------------------------------------------------
autocmd FileType qf setl scrolloff=0 cursorline
autocmd FileType qf noremap <buffer> <CR> <CR>

" Git
" ----------------------------------------------------------------------------------------------------
autocmd BufReadPost COMMIT_EDITMSG exe "normal gg"
