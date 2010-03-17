if exists("b:did_ftplugin")
	finish
endif

let b:did_ftplugin = 1
inoremap <buffer> ;; {<CR><CR>}<ESC>ki<TAB>

"" Pre-loaded properties
"inoremap <buffer> ;bo font-weight: bold;
"inoremap <buffer> ;un text-decoration: underline;
"inoremap <buffer> ;up text-transform: uppercase;

"inoremap <buffer> ;fs font-size: %;<ESC>hi
"inoremap <buffer> ;ta text-align: ;<ESC>i
"inoremap <buffer> ;co color: #;<ESC>i
"inoremap <buffer> ;ba background: ;<ESC>i

"" Block stuff
"inoremap <buffer> ;di display: ;<ESC>i
"inoremap <buffer> ;pa padding: ;<ESC>i
"inoremap <buffer> ;ma margin: ;<ESC>i

"inoremap <buffer> ;bt border-top: ;<ESC>i
"inoremap <buffer> ;br border-right: ;<ESC>i
"inoremap <buffer> ;bb border-bottom: ;<ESC>i
"inoremap <buffer> ;bl border-left: ;<ESC>i

"inoremap <buffer> ;fl float: left;
"inoremap <buffer> ;fr float: right;

"inoremap <buffer> ;wi width: ;<ESC>i
"inoremap <buffer> ;he height: ;<ESC>i

