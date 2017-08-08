" Ruby
" -----------------------------------------------------------------
augroup rubyfiletype
  autocmd BufRead,BufNewFile *.ru setfiletype ruby
  autocmd BufRead,BufNewFile Gemfile setfiletype ruby
augroup END

" tmux
" -----------------------------------------------------------------
augroup tmuxfiletype
  autocmd BufRead,BufNewFile .tmux.conf setfiletype tmux
augroup END

" JavaScript
" -----------------------------------------------------------------
augroup javascriptfiletype
  autocmd BufRead,BufNewFile *.es6 setfiletype javascript
  autocmd BufRead,BufNewFile *.js.es6 setfiletype javascript
  autocmd BufRead,BufNewFile *.json set filetype=javascript
augroup END

" CoffeeScript
" -----------------------------------------------------------------
augroup coffeefiletype
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
augroup end

" SASS
" -----------------------------------------------------------------
augroup sassfiletype
  autocmd BufRead,BufNewFile *.scss setfiletype scss
augroup END

" Elixir
" -----------------------------------------------------------------
augroup elixirfiletype
  autocmd BufRead,BufNewFile *.eex setfiletype html
augroup END

" Foreman
" -----------------------------------------------------------------
augroup foremanfiletype
  autocmd BufRead,BufNewFile Procfile setfiletype yaml
  autocmd BufRead,BufNewFile .env setfiletype sh
  autocmd BufRead,BufNewFile .env.* setfiletype sh
augroup END

" Handlebars
" -----------------------------------------------------------------
augroup handlebarsfiletype
  au BufNewFile,BufRead *.{handlebars,hb,hbs,hbt}{,.erb} setfiletype handlebars.html
  au BufNewFile,BufRead *.{handlebars,hb,hbs,hbt}{,.erb} set syntax=mustache
augroup END

" TypeScript
" -----------------------------------------------------------------
augroup typescriptfiletype
  au BufNewFile,BufRead *.ts,*.tsx setlocal filetype=typescript
augroup END

" LESS
" -----------------------------------------------------------------
augroup lessfiletype
  au BufNewFile,BufRead *.less setlocal filetype=scss
augroup END

" Blade
" -----------------------------------------------------------------
augroup bladefiletype
  autocmd BufNewFile,BufRead *.blade.php set filetype=blade
augroup END

" Configuration
" -----------------------------------------------------------------
augroup conf
  autocmd BufNewFile,BufRead *.conf set filetype=conf
augroup END

" Solidity
" -----------------------------------------------------------------
augroup solidity
  autocmd BufNewFile,BufRead *.sol set filetype=solidity
augroup END
