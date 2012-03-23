" This file should be used as a template for `.local.vimrc` files in Ruby
" projects. It also can be used as a symlinked file.
"
" $ ln -s ~/.vim/.global.vimrc .local.vimrc

setl fdm=marker

" Ruby {{{
" -----------------------------------------------------------------------
if exists("b:rails_root")

  " gem: rails {{{
  syn keyword rubyRailsCustom request
  if RailsFileType() =~ 'controller'
    syn keyword rubyRailsCustom params
    syn keyword rubyRailsCustom before_filter after_filter around_filter skip_before_filter skip_after_filter skip_around_filter rescue_from
  endif
  " }}}

  " gem: acts_as_tree_on_steroids {{{
  if RailsFileType() =~ 'model'
    syn keyword rubyRailsCustom acts_as_tree_on_steroids
  endif
  " }}}

  " gem: currency_magic {{{
  if RailsFileType() =~ 'model'
    syn keyword rubyRailsCustom currency_magic
  endif
  " }}}

  " Link it!
  hi def link rubyRailsCustom Function
  hi def link rubyRailsCustomAlt rubyControl
endif
" }}}

" Rack {{{
" -----------------------------------------------------------------------
if expand("%:t") == "config.ru"
  syn keyword configRuCustom run
  hi def link configRuCustom Function
endif
" }}}

" Sinatra {{{
" -----------------------------------------------------------------------
if expand("%:t") == "app.rb"
  syn keyword rubySinatraCustom deliver bail helpers configure status header params
  hi def link rubySinatraCustom Function
endif
" }}}

" RSpec {{{
" -----------------------------------------------------------------------
if expand('%') =~# '_spec\.rb$'
  syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject
  hi def link rubyRspec Function
endif
" }}}

" Bundler {{{
" -----------------------------------------------------------------------
if expand('%:t') =~# '^Gemfile'
  syn keyword rubyBundler gem source gemspec group
  hi def link rubyBundler Function
endif
" }}}

" Rake {{{
" -----------------------------------------------------------------------
if expand('%:t') =~# '^Rakefile$'
  syn keyword rubyRake task desc
  hi def link rubyRake Function
endif
" }}}

" Guard {{{
" -----------------------------------------------------------------------
if expand('%:t') =~# '^Guardfile$'
  syn keyword rubyGuard watch guard
  hi def link rubyGuard Function
endif
" }}}

" Capistrano {{{
" -----------------------------------------------------------------------
if expand('%:p') =~# 'config/deploy.rb$'
  syn keyword rubyCapistrano set namespace role task desc run ssh_options default_run_options
  hi def link rubyCapistrano Function
endif
" }}}
