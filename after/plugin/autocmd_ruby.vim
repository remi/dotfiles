" Ruby
" -----------------------------------------------------------------------
autocmd FileType ruby setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType eruby setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType eruby inoremap <buffer> ;er <%  %><Esc>hhi
autocmd FileType eruby inoremap <buffer> ;ee <%=  %><Esc>hhi
autocmd FileType haml  inoremap <buffer> ## #{}<Esc>i
autocmd FileType ruby  inoremap <buffer> ## #{}<Esc>i
autocmd FileType ruby  inoremap <buffer> ;; <Space>{  }<Esc>hi

" Rails
" -----------------------------------------------------------------------
function! RubyRails()
  if exists("b:rails_root")

    " gem: rails
    syn keyword rubyRailsCustom request
    if RailsFileType() =~ 'controller'
      syn keyword rubyRailsCustom params
      syn keyword rubyRailsCustom before_filter after_filter around_filter skip_before_filter skip_after_filter skip_around_filter rescue_from
    endif

    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom has_secure_password
    endif

    " gem: acts_as_tree_on_steroids
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom acts_as_tree_on_steroids
    endif

    " gem: currency_magic
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom currency_magic
    endif

    " gem: money_rails
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom monetize
    endif

    " gem: paperclip
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom has_attached_file
    endif

    " gem: ancestry
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom has_ancestry
    endif

    " gem: audited
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom audited
    endif

    " gem: acts-as-taggable-on
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom acts_as_taggable
    endif

    " gem: acts-as-paranoid + paranoia
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom acts_as_paranoid
    endif

    " gem: friendly_id
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom friendly_id
    endif

    " gem: paper_trail
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom has_paper_trail
    endif

    " gem: ranked-model
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom ranks
    endif

    " gem: camaraderie
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom acts_as_user acts_as_organization acts_as_membership
    endif

    " gem: microscope
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom acts_as_microscope
    endif

    " gem: parole
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom acts_as_comment acts_as_commentable
    endif

    " gem: emotions
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom acts_as_emotional acts_as_emotive
    endif

    " gem: awesome_nested_set
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom acts_as_nested_set
    endif

    " gem: devise
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom devise
    endif

    " gem: make_flaggable
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom make_flaggable make_flagger
    endif

    " gem: acts_as_taggable
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom acts_as_taggable_on
    endif

    " gem: carrierwave
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom mount_uploader
    endif

    " gem: activerecord_strict
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom validates_strict_columns
    endif

    " custom stuff
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom has_i18n_fields bool_attr_accessor
    endif

    " Link it!
    hi def link rubyRailsCustom Function
    hi def link rubyRailsCustomAlt rubyControl
  endif
endfunction
auto BufNewFile,BufReadPost * call RubyRails()

" Rack
" -----------------------------------------------------------------------
function! RubyRack()
  syn keyword configRuCustom run
  hi def link configRuCustom Function
endfunction
auto BufNewFile,BufReadPost config.ru call RubyRack()

" Sinatra
" -----------------------------------------------------------------------
function! RubySinatra()
  if expand("%:t") == "app.rb" || expand("%:p") =~ "config/application.rb$"
    syn keyword rubySinatraCustom deliver bail helpers configure status header params get post delete put before after enable helpers set error not_found
    syn keyword rubySinatraCustom use register
    hi def link rubySinatraCustom Function
  endif
endfunction
auto BufNewFile,BufReadPost *.rb call RubySinatra()

" Grape
" -----------------------------------------------------------------------
function! RubyGrape()
  if expand("%:t") == "app.rb"
    syn keyword rubyGrape resource rescue_from format rack_response
    hi def link rubyGrape Function
  endif
endfunction
auto BufNewFile,BufReadPost *.rb call RubyGrape()

" RSpec
" -----------------------------------------------------------------------
function! RubyRSpec()
  syn keyword rubyRspec describe context it specify before after setup subject its let let!
  hi def link rubyRspec Function
endfunction
auto BufNewFile,BufReadPost *_spec.rb call RubyRSpec()

" Bundler
" -----------------------------------------------------------------------
function! RubyBundler()
  syn keyword rubyBundler gem source gemspec group
  hi def link rubyBundler Function
endfunction
auto BufNewFile,BufReadPost Gemfile call RubyBundler()

" Rake
" -----------------------------------------------------------------------
function! RubyRake()
  syn keyword rubyRake task desc namespace
  hi def link rubyRake Function
endfunction
auto BufNewFile,BufReadPost Rakefile call RubyRake()
auto BufNewFile,BufReadPost tasks.rb call RubyRake()
auto BufNewFile,BufReadPost *.rake call RubyRake()

" Guard
" -----------------------------------------------------------------------
function! RubyGuard()
  syn keyword rubyGuard watch guard
  hi def link rubyGuard Function
endfunction
au BufNewFile,BufRead Guardfile call RubyGuard()

" Capistrano
" -----------------------------------------------------------------------
function! RubyCapistrano()
  syn keyword rubyCapistrano set namespace role task desc run ssh_options default_run_options
  hi def link rubyCapistrano Function
endfunction
auto BufNewFile,BufReadPost */config/deploy.rb call RubyCapistrano()
auto BufNewFile,BufReadPost */config/deploy/*.rb call RubyCapistrano()

" RABL
" -----------------------------------------------------------------------
function! RubyRabl()
  syn keyword rubyRabl node attribute object child collection attributes glue extends
  hi def link rubyRabl Function
endfunction
auto BufNewFile,BufReadPost *.rabl call RubyRabl()
