if exists("did\_load\_filetypes")
  finish
endif

" Ruby
" -----------------------------------------------------------------
augroup rubyfiletype
  au BufRead,BufNewFile *.ru setfiletype ruby
  au BufRead,BufNewFile Gemfile setfiletype ruby
augroup END

" tmux
" -----------------------------------------------------------------
augroup tmuxfiletype
  au BufNewFile,BufRead tmux.conf* setfiletype tmux
  au BufNewFile,BufRead .tmux.conf setfiletype tmux
augroup END

" JavaScript
" -----------------------------------------------------------------
augroup javascriptfiletype
  au BufRead,BufNewFile *.js.es6 setfiletype javascript
  au BufRead,BufNewFile *.json set filetype=javascript
  au BufRead,BufNewFile .bowerrc set filetype=javascript
augroup END

" SASS
" -----------------------------------------------------------------
augroup sassfiletype
  au BufRead,BufNewFile *.scss setf scss
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
