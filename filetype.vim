" ----------------------------------------------------------------------------------------------------
" @file         filetype.vim
" @description  Custom filetypes based on extensions
" @author       Rémi Prévost (remi, exomel.com)
" vim: set fdm=marker:
" ----------------------------------------------------------------------------------------------------

" Load this file only once {{{
" ----------------------------------------------------------------------------------------------------
if exists("did\_load\_filetypes")
  finish
endif
runtime! ftdetect/*.vim
" }}}

" PHP (+HTML) {{{
" -----------------------------------------------------------------
augroup phpfiletype
  au BufRead,BufNewFile *.php setfiletype php
  au BufRead,BufNewFile *.tpl.html setfiletype php
augroup END
" }}}

" Mustache {{{
" -----------------------------------------------------------------
augroup mustachefiletype
  au BufNewFile,BufRead *.mustache setfiletype html.mustache
  au BufNewFile,BufRead *.handlebars setfiletype html.mustache
  au BufNewFile,BufRead *.hbs setfiletype html.mustache
augroup END
" }}}

" Ruby {{{
" -----------------------------------------------------------------
augroup rubyfiletype
  au BufRead,BufNewFile *.ru setfiletype ruby
  au BufRead,BufNewFile *.rabl setfiletype ruby
  au BufRead,BufNewFile Gemfile setfiletype ruby
  au BufRead,BufNewFile Capfile setfiletype ruby
  au BufRead,BufNewFile Guardfile setfiletype ruby
  au BufRead,BufNewFile *.watchr setfiletype ruby
augroup END
" }}}

" Markdown {{{
" -----------------------------------------------------------------
augroup markdownfiletype
  au BufRead,BufNewFile *.markdown setfiletype mkd
  au BufRead,BufNewFile *.mkd setfiletype mkd
  au BufRead,BufNewFile *.md setfiletype mkd
augroup END
" }}}

" Apache configuration files {{{
" -----------------------------------------------------------------
augroup apachefiletype
  au BufRead,BufNewFile *.conf setfiletype apache
augroup END
" }}}

" ActionScript / Javascript / jQuery {{{
" -----------------------------------------------------------------
augroup javascriptfiletype
  au BufRead,BufNewFile *.as setfiletype javascript
  au BufRead,BufNewFile *.js setfiletype javascript.jquery
  au BufRead,BufNewFile *.json set filetype=json
augroup END
" }}}

" Liquid {{{
" -----------------------------------------------------------------
augroup liquidfiletype
  au BufNewFile,BufRead *.liquid setfiletype liquid
augroup END
" }}}

" tmux {{{
" -----------------------------------------------------------------
augroup tmuxfiletype
  au BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
augroup END
" }}}

" SASS {{{
" -----------------------------------------------------------------
augroup sassfiletype
  au BufRead,BufNewFile *.sass setf sass
  au BufRead,BufNewFile *.scss setf scss
augroup END
" }}}
