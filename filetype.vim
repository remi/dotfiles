if exists("did\_load\_filetypes")
  finish
endif
runtime! ftdetect/*.vim

" PHP (+HTML)
" -----------------------------------------------------------------
augroup phpfiletype
  au BufRead,BufNewFile *.php setfiletype php
  au BufRead,BufNewFile *.tpl.html setfiletype php
augroup END

" Mustache
" -----------------------------------------------------------------
augroup mustachefiletype
  au BufNewFile,BufRead *.mustache setfiletype html.mustache
augroup END

" Ruby
" -----------------------------------------------------------------
augroup rubyfiletype
  au BufRead,BufNewFile *.ru setfiletype ruby
  au BufRead,BufNewFile *.rabl setfiletype ruby
  au BufRead,BufNewFile Gemfile setfiletype ruby
  au BufRead,BufNewFile Capfile setfiletype ruby
  au BufRead,BufNewFile Guardfile setfiletype ruby
  au BufRead,BufNewFile *.watchr setfiletype ruby
augroup END

" Markdown
" -----------------------------------------------------------------
augroup markdownfiletype
  au BufRead,BufNewFile *.markdown setfiletype markdown
  au BufRead,BufNewFile *.mkd setfiletype markdown
  au BufRead,BufNewFile *.md setfiletype markdown
augroup END

" tmux
" -----------------------------------------------------------------
augroup tmuxfiletype
  au BufNewFile,BufRead tmux.conf* setfiletype tmux
  au BufNewFile,BufRead .tmux.conf setfiletype tmux
augroup END

" Apache configuration files
" -----------------------------------------------------------------
augroup apachefiletype
  au BufRead,BufNewFile *.conf setfiletype apache
augroup END

" ActionScript / Javascript / jQuery
" -----------------------------------------------------------------
augroup javascriptfiletype
  au BufRead,BufNewFile *.js.es6 setfiletype javascript
  au BufRead,BufNewFile *.as setfiletype javascript
  au BufRead,BufNewFile *.js setfiletype javascript.jquery
  au BufRead,BufNewFile *.json set filetype=javascript
  au BufRead,BufNewFile .bowerrc set filetype=javascript
augroup END

" SASS
" -----------------------------------------------------------------
augroup sassfiletype
  au BufRead,BufNewFile *.sass setf sass
  au BufRead,BufNewFile *.scss setf scss
  au BufRead,BufNewFile *.scss.erb setf scss
augroup END

" CSS
" -----------------------------------------------------------------
augroup cssfiletype
  au BufRead,BufNewFile *.css.erb setf css
augroup END

" Elixir
" -----------------------------------------------------------------
augroup elixirfiletype
  au BufRead,BufNewFile *.eex setf html
augroup END

" Foreman
" -----------------------------------------------------------------
augroup foremanfiletype
  au BufRead,BufNewFile Procfile setf yaml
  au BufRead,BufNewFile .env setf sh
  au BufRead,BufNewFile .env.* setf sh
augroup END
