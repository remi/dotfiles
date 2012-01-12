" ----------------------------------------------------------------------------------------------------
" @file         filetype.vim
" @description  Custom filetypes based on extensions
" @author       Rémi Prévost (remi, exomel.com)
" ----------------------------------------------------------------------------------------------------

" Load this file only once {{{
" ----------------------------------------------------------------------------------------------------
if exists("did\_load\_filetypes")
	finish
endif
" }}}

" PHP (+HTML) {{{
" -----------------------------------------------------------------
au! BufRead,BufNewFile *.php setfiletype php
au! BufRead,BufNewFile *.tpl.html setfiletype php
" }}}

" Mustache {{{
" -----------------------------------------------------------------
runtime! ftdetect/*.vim
au BufNewFile,BufRead *.mustache setfiletype html.mustache
" }}}

" Ruby {{{
" -----------------------------------------------------------------
augroup userruby
	au! BufRead,BufNewFile *.ru setfiletype ruby
	au! BufRead,BufNewFile Gemfile setfiletype ruby
	au! BufRead,BufNewFile Capfile setfiletype ruby
augroup END
" }}}

" Markdown {{{
" -----------------------------------------------------------------
augroup markdown
	au! BufRead,BufNewFile *.markdown setfiletype mkd
	au! BufRead,BufNewFile *.mkd setfiletype mkd
	au! BufRead,BufNewFile *.md setfiletype mkd
augroup END
" }}}

" Apache configuration files {{{
" -----------------------------------------------------------------
au! BufRead,BufNewFile *.conf setfiletype apache
" }}}

" ActionScript (Javascript) {{{
" -----------------------------------------------------------------
au! BufRead,BufNewFile *.as setfiletype javascript
" }}}

" Javascript / jQuery {{{
" -----------------------------------------------------------------
au! BufRead,BufNewFile *.js setfiletype javascript.jquery
au! BufRead,BufNewFile *.json set filetype=json
" }}}

" Liquid {{{
" -----------------------------------------------------------------
au BufNewFile,BufRead *.liquid setfiletype liquid
" }}}

" tmux {{{
" -----------------------------------------------------------------
au BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
" }}}

" SASS {{{
" -----------------------------------------------------------------
au BufRead,BufNewFile *.sass setf sass
au BufRead,BufNewFile *.scss setf scss
" }}}
