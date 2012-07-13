" ----------------------------------------------------------------------------------------------------
" @file         autocmd_ruby.vim
" @description  Auto-commands for Ruby files
" @author       Rémi Prévost (remi, exomel.com)
" vim: set fdm=marker:
" ----------------------------------------------------------------------------------------------------

" Ruby {{{
" -----------------------------------------------------------------------
autocmd FileType ruby setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType eruby setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType eruby inoremap <buffer> ;er <%  %><Esc>hhi
autocmd FileType eruby inoremap <buffer> ;ee <%=  %><Esc>hhi
autocmd FileType haml  inoremap <buffer> ## #{}<Esc>i
autocmd FileType ruby  inoremap <buffer> ## #{}<Esc>i
" }}}

" Rails {{{
" -----------------------------------------------------------------------
function! RubyRails()
  if exists("b:rails_root")

    " gem: rails {{{
    syn keyword rubyRailsCustom request
    if RailsFileType() =~ 'controller'
      syn keyword rubyRailsCustom params
      syn keyword rubyRailsCustom before_filter after_filter around_filter skip_before_filter skip_after_filter skip_around_filter rescue_from
    endif

    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom has_secure_password
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

    " gem: money_rails {{{
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom monetize
    endif
    " }}}

    " gem: paperclip {{{
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom has_attached_file
    endif
    " }}}

    " Link it!
    hi def link rubyRailsCustom Function
    hi def link rubyRailsCustomAlt rubyControl
  endif
endfunction
auto BufNewFile,BufReadPost * call RubyRails()
" }}}

" Rack {{{
" -----------------------------------------------------------------------
function! RubyRack()
  syn keyword configRuCustom run
  hi def link configRuCustom Function
endfunction
auto BufNewFile,BufReadPost config.ru call RubyRack()
" }}}

" Sinatra {{{
" -----------------------------------------------------------------------
function! RubySinatra()
  if expand("%:t") == "app.rb"
    syn keyword rubySinatraCustom deliver bail helpers configure status header params get post delete put
    hi def link rubySinatraCustom Function
  endif
endfunction
auto BufNewFile,BufReadPost *.rb call RubySinatra()
" }}}

" Grape {{{
" -----------------------------------------------------------------------
function! RubyGrape()
  if expand("%:t") == "app.rb"
    syn keyword rubyGrape resource rescue_from format rack_response
    hi def link rubyGrape Function
  endif
endfunction
auto BufNewFile,BufReadPost *.rb call RubyGrape()
" }}}

" RSpec {{{
" -----------------------------------------------------------------------
function! RubyRSpec()
  syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject
  hi def link rubyRspec Function
endfunction
auto BufNewFile,BufReadPost *.spec_rb call RubyRSpec()
" }}}

" Bundler {{{
" -----------------------------------------------------------------------
function! RubyBundler()
  syn keyword rubyBundler gem source gemspec group
  hi def link rubyBundler Function
endfunction
auto BufNewFile,BufReadPost Gemfile call RubyBundler()
" }}}

" Rake {{{
" -----------------------------------------------------------------------
function! RubyRake()
  syn keyword rubyRake task desc
  hi def link rubyRake Function
endfunction
auto BufNewFile,BufReadPost Rakefile call RubyRake()
" }}}

" Guard {{{
" -----------------------------------------------------------------------
function! RemiGuardfile()
  syn keyword rubyGuard watch guard
  hi def link rubyGuard Function
endfunction
au BufNewFile,BufRead Guardfile call RemiGuardfile()
" }}}

" Capistrano {{{
" -----------------------------------------------------------------------
function! RubyCapistrano()
  syn keyword rubyCapistrano set namespace role task desc run ssh_options default_run_options
  hi def link rubyCapistrano Function
endfunction
auto BufNewFile,BufReadPost */config/deploy.rb call RubyCapistrano()
" }}}

" RABL {{{
" -----------------------------------------------------------------------
function! RubyRabl()
  syn keyword rubyRabl node attribute object child collection attributes glue extends
  hi def link rubyRabl Function
endfunction
auto BufNewFile,BufReadPost *.rabl call RubyRabl()
" }}}
