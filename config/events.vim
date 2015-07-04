" Move the cursor to its last location in the file
" ----------------------------------------------------------------------------------------------------
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" QuickFix
" ----------------------------------------------------------------------------------------------------
autocmd FileType qf setl scrolloff=0 cursorline
autocmd FileType qf noremap <buffer> <CR> <CR>

" Git
" ----------------------------------------------------------------------------------------------------
autocmd BufReadPost COMMIT_EDITMSG exe "normal gg"

" Rails
" -----------------------------------------------------------------------
function! RubyRails()
  if exists("b:rails_root")

    " gem: rails
    syn keyword rubyRailsCustom request
    syn keyword rubyRailsMethod alias_method

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

    " gem: her
    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom parse_root_in_json include_root_in_json resource_path collection_path use_api primary_key
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
autocmd BufNewFile,BufReadPost *.rb call RubyRails()

" Rack
" -----------------------------------------------------------------------
function! RubyRack()
  syn keyword configRuCustom run
  hi def link configRuCustom Function
endfunction
autocmd BufNewFile,BufReadPost config.ru call RubyRack()

" Sinatra
" -----------------------------------------------------------------------
function! RubySinatra()
  if expand("%:t") == "app.rb" || expand("%:p") =~ "config/application.rb$"
    syn keyword rubySinatraCustom deliver bail helpers configure status header params get post delete put before after enable helpers set error not_found
    syn keyword rubySinatraCustom use register
    hi def link rubySinatraCustom Function
  endif
endfunction
autocmd BufNewFile,BufReadPost *.rb call RubySinatra()

" RSpec
" -----------------------------------------------------------------------
function! RubyRSpec()
  syn keyword rubyRspec describe context it specify before after setup subject its let let! pending expect allow
  hi def link rubyRspec Function
endfunction
autocmd BufNewFile,BufReadPost *_spec.rb call RubyRSpec()

" Bundler
" -----------------------------------------------------------------------
function! RubyBundler()
  syn keyword rubyBundler gem source gemspec group
  hi def link rubyBundler Function
endfunction
autocmd BufNewFile,BufReadPost Gemfile call RubyBundler()

" Rake
" -----------------------------------------------------------------------
function! RubyRake()
  syn keyword rubyRake task desc namespace
  hi def link rubyRake Function
endfunction
autocmd BufNewFile,BufReadPost Rakefile call RubyRake()
autocmd BufNewFile,BufReadPost tasks.rb call RubyRake()
autocmd BufNewFile,BufReadPost *.rake call RubyRake()

" JavaScript
" -----------------------------------------------------------------------
function! JavaScript()
  syntax keyword jsStatement event

  " Highlight class names (eg. `FooBar`)
  syntax match jsClassName "\([a-z]\)\@<!\([A-Z][a-zA-Z_]\+\)"
  syntax cluster jsAll add=jsClassName
  hi link jsClassName jsGlobalObjects

  " Highlight constants (eg. `FOO_BAR`)
  syntax match jsConstant "\([a-z]\)\@<!\([A-Z_]\+\)\([^a-z]\)\@="
  syntax cluster jsAll add=jsConstant
  hi link jsConstant jsFunction

  " Apply new colors to a few keywords
  hi link jsStorageClass Function
  hi link jsOperator Function
  hi link jsClass Function
endfunction
autocmd FileType javascript call JavaScript()
