" ----------------------------------------------------------------------------------------------------
"
" @file         filetype.vim
" @description  Custom filetypes based on extensions
" @author       Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
"
" ----------------------------------------------------------------------------------------------------

" On ne fait rien si ce fichier a déjà été chargé
" -----------------------------------------------------------------
if exists("did\_load\_filetypes")
	finish
endif

" PHP (+HTML)
" -----------------------------------------------------------------
au! BufRead,BufNewFile *.php        setfiletype php
au! BufRead,BufNewFile *.tpl.html   setfiletype php

" Mustache
" -----------------------------------------------------------------
runtime! ftdetect/*.vim
au BufNewFile,BufRead *.mustache        setf html.mustache

" Rack
" -----------------------------------------------------------------
augroup rack
	au! BufRead,BufNewFile *.ru setfiletype ruby
augroup END

" Markdown
" -----------------------------------------------------------------
augroup markdown
	au! BufRead,BufNewFile *.mkd   setfiletype mkd
	au! BufRead,BufNewFile *.md    setfiletype mkd
augroup END

" Apache configuration files
" -----------------------------------------------------------------
au! BufRead,BufNewFile *.conf   setfiletype apache

" ActionScript (Javascript)
" -----------------------------------------------------------------
au! BufRead,BufNewFile *.as   setfiletype javascript

" Javascript / jQuery
" -----------------------------------------------------------------
au! BufRead,BufNewFile *.js   setfiletype javascript.jquery
