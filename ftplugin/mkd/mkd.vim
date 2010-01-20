" Vim syntax file
" Language:	Markdown
" Maintainer:	Ben Williams <benw@plasticboy.com>
" URL:		http://plasticboy.com/markdown-vim-mode/
" Version:	9
" Last Change:  2009 November 28 
" Remark:	Uses HTML syntax file
" Remark:	I don't do anything with angle brackets (<>) because that would too easily
"		easily conflict with HTML syntax
" TODO: 	Handle stuff contained within stuff (e.g. headings within blockquotes)


" Read the HTML syntax to start with
if version < 600
  so <sfile>:p:h/html.vim
else
  runtime! syntax/html.vim
  unlet b:current_syntax
endif

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" don't use standard HiLink, it will not work with included syntax files
if version < 508
  command! -nargs=+ HtmlHiLink hi link <args>
else
  command! -nargs=+ HtmlHiLink hi def link <args>
endif

syn spell toplevel
syn case ignore
syn sync linebreaks=1

"additions to HTML groups
syn region htmlBold     start=/\\\@<!\(^\|\A\)\@=\*\@<!\*\*\*\@!/     end=/\\\@<!\*\@<!\*\*\*\@!\($\|\A\)\@=/   contains=@Spell,htmlItalic
syn region htmlItalic   start=/\\\@<!\(^\|\A\)\@=\*\@<!\*\*\@!/       end=/\\\@<!\*\@<!\*\*\@!\($\|\A\)\@=/      contains=htmlBold,@Spell
syn region htmlBold     start=/\\\@<!\(^\|\A\)\@=_\@<!___\@!/         end=/\\\@<!_\@<!___\@!\($\|\A\)\@=/       contains=htmlItalic,@Spell
syn region htmlItalic   start=/\\\@<!\(^\|\A\)\@=_\@<!__\@!/          end=/\\\@<!_\@<!__\@!\($\|\A\)\@=/        contains=htmlBold,@Spell

" [link](URL) | [link][id] | [link][]
syn region mkdLink matchgroup=mkdDelimiter      start="\!\?\[" end="\]\ze\s*[[(]" contains=@Spell nextgroup=mkdURL,mkdID skipwhite oneline
syn region mkdID matchgroup=mkdDelimiter        start="\["    end="\]" contained
syn region mkdURL matchgroup=mkdDelimiter       start="("     end=")"  contained

" Link definitions: [id]: URL (Optional Title)
" TODO handle automatic links without colliding with htmlTag (<URL>)
syn region mkdLinkDef matchgroup=mkdDelimiter   start="^ \{,3}\zs\[" end="]:" oneline nextgroup=mkdLinkDefTarget skipwhite
syn region mkdLinkDefTarget start="<\?\zs\S" excludenl end="\ze[>[:space:]\n]"   contained nextgroup=mkdLinkTitle,mkdLinkDef skipwhite skipnl oneline
syn region mkdLinkTitle matchgroup=mkdDelimiter start=+"+     end=+"+  contained
syn region mkdLinkTitle matchgroup=mkdDelimiter start=+'+     end=+'+  contained
syn region mkdLinkTitle matchgroup=mkdDelimiter start=+(+     end=+)+  contained

"define Markdown groups
syn match  mkdLineContinue ".$" contained
syn match  mkdRule      /^\s*\*\s\{0,1}\*\s\{0,1}\*$/
syn match  mkdRule      /^\s*-\s\{0,1}-\s\{0,1}-$/
syn match  mkdRule      /^\s*_\s\{0,1}_\s\{0,1}_$/
syn match  mkdRule      /^\s*-\{3,}$/
syn match  mkdRule      /^\s*\*\{3,5}$/
syn match  mkdListItem  "^\s*[-*+]\s\+"
syn match  mkdListItem  "^\s*\d\+\.\s\+"
syn match  mkdCode      /^\s*\n\(\(\s\{4,}[^ ]\|\t\+[^\t]\).*\n\)\+/
syn match  mkdLineBreak /  \+$/
syn region mkdCode      start=/\\\@<!`/                   end=/\\\@<!`/
syn region mkdCode      start=/\s*``[^`]*/          end=/[^`]*``\s*/
syn region mkdBlockquote start=/^\s*>/              end=/$/                 contains=mkdLineBreak,mkdLineContinue,@Spell
syn region mkdCode      start="<pre[^>]*>"         end="</pre>"
syn region mkdCode      start="<code[^>]*>"        end="</code>"

"HTML headings
syn region htmlH1       start="^\s*#"                   end="\($\|#\+\)" contains=@Spell
syn region htmlH2       start="^\s*##"                  end="\($\|#\+\)" contains=@Spell
syn region htmlH3       start="^\s*###"                 end="\($\|#\+\)" contains=@Spell
syn region htmlH4       start="^\s*####"                end="\($\|#\+\)" contains=@Spell
syn region htmlH5       start="^\s*#####"               end="\($\|#\+\)" contains=@Spell
syn region htmlH6       start="^\s*######"              end="\($\|#\+\)" contains=@Spell
syn match  htmlH1       /^.\+\n=\+$/ contains=@Spell
syn match  htmlH2       /^.\+\n-\+$/ contains=@Spell

"highlighting for Markdown groups
HtmlHiLink mkdString	    String
HtmlHiLink mkdCode          String
HtmlHiLink mkdBlockquote    Comment
HtmlHiLink mkdLineContinue  Comment
HtmlHiLink mkdListItem      Identifier
HtmlHiLink mkdRule          Identifier
HtmlHiLink mkdLineBreak     Todo
HtmlHiLink mkdLink          htmlLink
HtmlHiLink mkdURL           htmlString
HtmlHiLink mkdID            Identifier
HtmlHiLink mkdLinkDef       mkdID
HtmlHiLink mkdLinkDefTarget mkdURL
HtmlHiLink mkdLinkTitle     htmlString

HtmlHiLink mkdDelimiter     Delimiter

let b:current_syntax = "mkd"

delcommand HtmlHiLink

"Keyboard shortcuts (inspired by html.vim by Donald J. Bindner)

"phrase emphasis
nnoremap <buffer> ;st i****<Esc>F*i
vnoremap <buffer> ;st <Esc>`>a**<Esc>`<i**<Esc>l
inoremap <buffer> ;st ****<Esc>F*i
nnoremap <buffer> ;em i**<Esc>F*li
vnoremap <buffer> ;em <Esc>`>a*<Esc>`<i*<Esc>l
inoremap <buffer> ;em **<Esc>F*li

"links
nnoremap <buffer> ;aa i[]()<Esc>F[a
vnoremap <buffer> ;aa <Esc>`>a]()<Esc>`<i[<Esc>f(a
inoremap <buffer> ;aa []()<Esc>F[a
nnoremap <buffer> ;ah i[]()<Esc>F(a
vnoremap <buffer> ;ah <Esc>`>a)<Esc>`<i[](<Esc>F[a
inoremap <buffer> ;ah []()<Esc>F(a

"lists
vnoremap <buffer> ;ul <Esc>:'<,'>s/^\(\s*\)\(.*\)$/\1* \2/<CR>`<l<Esc>:silent noh<Bar>echo<CR> 

"codespans
nnoremap <buffer> ;cd i``<Esc>F`li
vnoremap <buffer> ;cd <Esc>`>a`<Esc>`<i`<Esc>l
inoremap <buffer> ;cd ``<Esc>F`li

"horizontal rules
nnoremap <buffer> ;hr i- - -<CR><CR><Esc>
vnoremap <buffer> ;hr <Esc>`<i- - -<CR><Esc>
inoremap <buffer> ;hr - - -<CR><CR>

"headers
nnoremap <buffer> ;h1 i# <Esc>a
vnoremap <buffer> ;h1 <Esc>`>a<Esc>`<i# <Esc>l
inoremap <buffer> ;h1 # <Esc>a
nnoremap <buffer> ;h2 i## <Esc>a
vnoremap <buffer> ;h2 <Esc>`>a<Esc>`<i## <Esc>l
inoremap <buffer> ;h2 ## <Esc>a
nnoremap <buffer> ;h3 i### <Esc>a
vnoremap <buffer> ;h3 <Esc>`>a<Esc>`<i### <Esc>l
inoremap <buffer> ;h3 ### <Esc>a
nnoremap <buffer> ;h4 i#### <Esc>a
vnoremap <buffer> ;h4 <Esc>`>a<Esc>`<i#### <Esc>l
inoremap <buffer> ;h4 #### <Esc>a
nnoremap <buffer> ;h5 i##### <Esc>a
vnoremap <buffer> ;h5 <Esc>`>a<Esc>`<i##### <Esc>l
inoremap <buffer> ;h5 ##### <Esc>a
nnoremap <buffer> ;h6 i###### <Esc>a
vnoremap <buffer> ;h6 <Esc>`>a<Esc>`<i###### <Esc>l
inoremap <buffer> ;h6 ###### <Esc>a

" vim: ts=8
