" original http://www.vim.org/scripts/script.php?script_id=1677

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "twilight"

" Variables
let s:grey_blue = '#8a9597'
let s:light_grey_blue = '#a0a8b0'
let s:dark_grey_blue = '#34383c'
let s:mid_grey_blue = '#64686c'
let s:beige = '#ceb67f'
let s:light_orange = '#ebc471'
let s:yellow = '#e3d796'
let s:violet = '#a999ac'
let s:green = '#a2a96f'
let s:lightgreen = '#c2c98f'
let s:red = '#d08356'
let s:cyan = '#74dad9'
let s:darkgrey = '#1a1a1a'
let s:grey = '#303030'
let s:lightgrey = '#605958'
let s:midgrey = '#888888'
let s:white = '#fffedc'

if version >= 700
	exe 'hi CursorLine guibg=#262626'
	exe 'hi CursorColumn guibg=#262626'
	exe 'hi MatchParen guifg=white guibg=#80a090 gui=bold'

	exe 'hi TabLine guifg=#a09998 guibg=#202020'
	exe 'hi TabLineFill guifg=#a09998 guibg=#202020'
	exe 'hi TabLineSel guifg=#a09998 guibg=#404850'

	exe 'hi Pmenu guifg=#605958 guibg=#303030'
	exe 'hi PmenuSel guifg=#d8d3d2 guibg=#404040'
endif

exe 'hi Visual                                        guibg=#404040'
exe 'hi Cursor                                        guibg=#b0d0f0'

exe 'hi Normal         guifg='.s:white             .' guibg='.s:darkgrey
exe 'hi Underlined     guifg='.s:white             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi NonText        guifg='.s:lightgrey         .' guibg='.s:darkgrey
exe 'hi SpecialKey     guifg='.s:grey              .' guibg='.s:darkgrey

exe 'hi LineNr         guifg='.s:mid_grey_blue     .' guibg='.s:dark_grey_blue  .' gui=none'
exe 'hi StatusLine     guifg='.s:white             .' guibg='.s:grey            .' gui=italic'
exe 'hi StatusLineNC   guifg='.s:lightgrey         .' guibg='.s:grey            .' gui=italic'
exe 'hi VertSplit      guifg='.s:grey              .' guibg='.s:grey            .' gui=none'

exe 'hi Folded         guifg='.s:grey_blue         .' guibg='.s:dark_grey_blue  .' gui=none'
exe 'hi FoldColumn     guifg='.s:grey_blue         .' guibg='.s:dark_grey_blue  .' gui=none'
exe 'hi SignColumn     guifg='.s:grey_blue         .' guibg='.s:dark_grey_blue  .' gui=none'

exe 'hi Comment        guifg='.s:mid_grey_blue     .' guibg='.s:darkgrey        .' gui=italic'
exe 'hi TODO           guifg='.s:grey_blue         .' guibg='.s:darkgrey        .' gui=italic,bold'

exe 'hi Title          guifg='.s:grey_blue         .' guibg='.s:darkgrey        .' gui=none'

exe 'hi Constant       guifg='.s:red               .' guibg='.s:darkgrey        .' gui=none'
exe 'hi String         guifg='.s:green             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Special        guifg='.s:lightgreen        .' guibg='.s:darkgrey        .' gui=none'

exe 'hi Identifier     guifg='.s:grey_blue         .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Statement      guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Conditional    guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Repeat         guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Structure      guifg='.s:beige             .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Function       guifg='.s:violet            .' guibg='.s:darkgrey        .' gui=none'

exe 'hi PreProc        guifg='.s:grey_blue         .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Operator       guifg='.s:light_orange      .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Type           guifg='.s:yellow            .' guibg='.s:darkgrey        .' gui=italic'

exe 'hi Directory      guifg='.s:yellow            .' guibg='.s:darkgrey        .' gui=none'
exe 'hi Error          guifg='.s:white             .' guibg='.s:red
exe 'hi Search         guifg=#606000                  guibg=#c0c000                gui=bold'
exe 'hi IncSearch      guifg=#f0a0c0                  guibg=#302028                gui=underline'

" Javascript
exe 'hi javaScriptRegexpString guifg='.s:violet
hi link javaScriptValue Constant

" NERDTree
hi link treePart Special
hi link treePartFile Type
hi link treeFile Normal
hi link treeExecFile Title
hi link treeDirSlash Identifier
hi link treeClosable Type
hi link treeDir Directory
hi link treeLink Function

" Custom (for statusline)
exe 'hi User1          guibg='.s:grey.'               guifg='.s:white
exe 'hi User3          guibg='.s:grey.'               guifg='.s:midgrey
exe 'hi User5          guibg='.s:grey.'               guifg='.s:violet
exe 'hi User6          guibg='.s:grey.'               guifg='.s:red
exe 'hi User7          guibg='.s:grey.'               guifg='.s:light_orange
