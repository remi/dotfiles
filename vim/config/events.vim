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
      syn keyword rubyRailsCustom before_filter after_filter around_filter skip_before_filter skip_after_filter skip_around_filter
      syn keyword rubyRailsCustom before_action after_action around_action skip_before_action skip_after_action skip_around_action
    endif

    if RailsFileType() =~ 'model'
      syn keyword rubyRailsCustom has_secure_password
    endif

    " Other gems
    if RailsFileType() =~ 'model'
      " gem: acts_as_tree_on_steroids
      syn keyword rubyRailsCustom acts_as_tree_on_steroids

      " gem: currency_magic
      syn keyword rubyRailsCustom currency_magic

      " gem: money_rails
      syn keyword rubyRailsCustom monetize

      " gem: paperclip
      syn keyword rubyRailsCustom has_attached_file

    " gem: ancestry
      syn keyword rubyRailsCustom has_ancestry

      " gem: audited
      syn keyword rubyRailsCustom audited

      " gem: acts-as-taggable-on
      syn keyword rubyRailsCustom acts_as_taggable

      " gem: acts-as-paranoid + paranoia
      syn keyword rubyRailsCustom acts_as_paranoid

      " gem: friendly_id
      syn keyword rubyRailsCustom friendly_id

      " gem: paper_trail
      syn keyword rubyRailsCustom has_paper_trail

      " gem: ranked-model
      syn keyword rubyRailsCustom ranks

      " gem: camaraderie
      syn keyword rubyRailsCustom acts_as_user acts_as_organization acts_as_membership

      " gem: microscope
      syn keyword rubyRailsCustom acts_as_microscope

      " gem: parole
      syn keyword rubyRailsCustom acts_as_comment acts_as_commentable

      " gem: emotions
      syn keyword rubyRailsCustom acts_as_emotional acts_as_emotive

      " gem: awesome_nested_set
      syn keyword rubyRailsCustom acts_as_nested_set

      " gem: devise
      syn keyword rubyRailsCustom devise

      " gem: make_flaggable
      syn keyword rubyRailsCustom make_flaggable make_flagger

      " gem: acts_as_taggable
      syn keyword rubyRailsCustom acts_as_taggable_on

      " gem: carrierwave
      syn keyword rubyRailsCustom mount_uploader

      " gem: activerecord_strict
      syn keyword rubyRailsCustom validates_strict_columns

      " gem: her
      syn keyword rubyRailsCustom parse_root_in_json include_root_in_json resource_path collection_path use_api primary_key

      " custom stuff
      syn keyword rubyRailsCustom has_i18n_fields bool_attr_accessor
    endif

    " Link it!
    hi def link rubyRailsCustom Function
    hi def link rubyRailsCustomAlt rubyControl
  endif
endfunction
autocmd BufNewFile,BufReadPost *.rb call RubyRails()

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
autocmd BufNewFile,BufReadPost *.rake call RubyRake()
