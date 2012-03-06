" Vim syntax file
" Language: SCSS (Sassy CSS)
" Author: Daniel Hofstetter (daniel.hofstetter@42dh.com)
" Inspired by the syntax files for sass and css. Thanks to the authors of
" those files!

if exists("b:current_syntax")
  finish
endif

runtime! syntax/css.vim

syn case ignore

syn region scssDefinition transparent matchgroup=cssBraces start='{' end='}' contains=css.*Attr,css.*Prop,cssComment,cssValue.*,cssColor,cssUrl,cssImportant,cssError,cssStringQ,cssStringQQ,cssFunction,cssUnicodeEscape,scssDefinition,scssComment,scssIdChar,scssClassChar,scssAmpersand,scssVariable,scssInclude,scssExtend,scssDebug,scssWarn,@scssControl,scssInterpolation,scssNestedSelector

syn region scssInterpolation start="#{" end="}" contains=scssVariable

syn match scssVariable "$[[:alnum:]_-]\+" nextgroup=scssVariableAssignment
syn match scssVariableAssignment ":" contained nextgroup=scssVariableValue
syn match scssVariableValue ".*;"me=e-1 contained contains=scssVariable,scssOperator,scssDefault "me=e-1 means that the last char of the pattern is not highlighted
syn match scssMixin "^@mixin" nextgroup=scssMixinName
syn match scssMixinName " [[:alnum:]_-]\+" contained nextgroup=scssDefinition
syn match scssInclude "@include" nextgroup=scssMixinName
syn match scssExtend "@extend .*[;}]"me=e-1 contains=cssTagName,scssIdChar,scssClassChar

syn match scssColor "#[0-9A-Fa-f]\{3\}\>" contained
syn match scssColor "#[0-9A-Fa-f]\{6\}\>" contained

syn match scssIdChar "#[[:alnum:]_-]\@=" nextgroup=scssId contains=scssColor
syn match scssId "[[:alnum:]_-]\+" contained
syn match scssClassChar "\.[[:alnum:]_-]\@=" nextgroup=scssClass
syn match scssClass "[[:alnum:]_-]\+" contained
syn match scssAmpersand "&" nextgroup=cssPseudoClass

syn match scssOperator "+" contained
syn match scssOperator "-" contained
syn match scssOperator "/" contained
syn match scssOperator "*" contained

syn match scssNestedSelector "[^/]* {"me=e-1 contained contains=cssTagName,cssAttributeSelector,scssIdChar,scssClassChar,scssAmpersand,scssVariable,scssMixin,@scssControl,scssInterpolation,scssNestedProperty
syn match scssNestedProperty "[[:alnum:]]\+:"me=e-1 contained

syn match scssDebug "@debug"
syn match scssWarn "@warn"
syn match scssDefault "!default" contained

syn match scssIf "@if"
syn match scssElse "@else"
syn match scssElseIf "@else if"
syn match scssWhile "@while"
syn match scssFor "@for" nextgroup=scssVariable
syn match scssFrom " from "
syn match scssTo " to "
syn match scssThrough " through "
syn cluster scssControl contains=scssIf,scssElse,scssElseIf,scssWhile,scssFor,scssFrom,scssTo,scssThrough

syn match scssComment "//.*$" contains=@Spell

hi def link scssVariable  Identifier
hi def link scssVariableValue Constant
hi def link scssMixin	  PreProc
hi def link scssMixinName Function
hi def link scssInclude	  PreProc
hi def link scssExtend	  PreProc
hi def link scssComment	  Comment
hi def link scssColor     Constant
hi def link scssIdChar	  Special
hi def link scssClassChar Special
hi def link scssId	  Identifier
hi def link scssClass	  Identifier
hi def link scssAmpersand Character
hi def link scssNestedProperty Type
hi def link scssDebug	  Debug
hi def link scssWarn	  Debug
hi def link scssDefault   Special
hi def link scssIf	  Conditional
hi def link scssElse	  Conditional
hi def link scssElseIf	  Conditional
hi def link scssWhile	  Repeat
hi def link scssFor	  Repeat
hi def link scssFrom	  Repeat
hi def link scssTo	  Repeat
hi def link scssThrough	  Repeat
hi def link scssInterpolation Delimiter

runtime! syntax/css/html5-elements.vim
runtime! syntax/css/css3-animations.vim
runtime! syntax/css/css3-background.vim
runtime! syntax/css/css3-box.vim
runtime! syntax/css/css3-break.vim
runtime! syntax/css/css3-colors.vim
runtime! syntax/css/css3-content.vim
runtime! syntax/css/css3-flexbox.vim
runtime! syntax/css/css3-gcpm.vim
runtime! syntax/css/css3-grid.vim
runtime! syntax/css/css3-hyperlinks.vim
runtime! syntax/css/css3-images.vim
runtime! syntax/css/css3-layout.vim
runtime! syntax/css/css3-linebox.vim
runtime! syntax/css/css3-lists.vim
runtime! syntax/css/css3-marquee.vim
" runtime! syntax/css/css3-mediaqueries.vim
runtime! syntax/css/css3-multicol.vim
runtime! syntax/css/css3-preslev.vim
runtime! syntax/css/css3-ruby.vim
runtime! syntax/css/css3-selectors.vim
runtime! syntax/css/css3-text.vim
runtime! syntax/css/css3-transforms.vim
runtime! syntax/css/css3-transitions.vim
runtime! syntax/css/css3-ui.vim
runtime! syntax/css/css3-values.vim
runtime! syntax/css/css3-writing-modes.vim

let b:current_syntax = "scss"
