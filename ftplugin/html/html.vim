" XHTML.vim - version 1.01 - Macros and menus for xhtml documents
"
" Copyright 2003 by Donald J. Bindner
"  Permission to copy this document or make derivative works is granted
"  without condition.
"
" Inspired by a similar work by:
"       T Scott Urban urban@unix.mauigateway.com
" 
" This file is program-generated, hence the general lack of comments.
"
" Each tag may be accessed by its short cut (and by the menu if using a gui)
" in each of 3 modes.  For most tags, these rules apply:
"
" Insert Mode:
"   Inserts the tag (and its closing tag when applicable) at the current
"   cursor position.  The cursor is moved to the contents of the first
"   attribute when one exists or after the start tag otherwise.
"   
" Normal Mode:
"   Inserts the tag (and its closing tag when applicable) on the line before
"   the current line.  The cursor is placed as above.
"
" Visual Mode:
"   For tags having attributes, tags are placed with the highlighted region in
"   the contents of the first attribute (typically href or name).  For tags
"   that do not contain attributes, the highlighted region is placed between
"   directly after the open tag.
"
" That said, lists are somewhat different.
"
" Lists:
"   When creating an ordered or unordered list in visual mode, the highlighted
"   lines will be individually enclosed in <li></li> pairs (i.e. each line
"   will be an item in the list).
"
"   When a definition list is created in visual mode, the lines will be
"   processed similarly.  The first word on each line will become the
"   definition term, and the remainder will be the definition description.
"
" Other:
"   The character CTRL-J has been redefined to "jump" to the next attribute
"   content field or the non-whitespace character after a tag closes.
"
"   There are two commands :Quote and :Unquote that take ranges and will
"   quote or unquote respectively any &, <, > symbols on each line.  This
"   makes it convenient to show html code in a page.
"
"----------
" 
" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

"----------
"[doctype] tag
nnoremap <buffer> ;do O<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><CR>
inoremap <buffer> ;do <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><CR>
if has("gui")
 nnoremenu XHtml.DOCTYPE<Tab>;do O<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><CR>
 inoremenu XHtml.DOCTYPE<Tab>;do <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"><CR>
endif
"----------
"comment tag
nnoremap <buffer> ;co O<!--  --><Esc>F i
vnoremap <buffer> ;co <Esc>`>a --><Esc>`<i<!-- <Esc>l
inoremap <buffer> ;co <!--  --><Esc>F i
if has("gui")
 nnoremenu XHtml.Comment<Tab>;co O<!--  --><Esc>F i
 vnoremenu XHtml.Comment<Tab>;co <Esc>`>a --><Esc>`<i<!-- <Esc>l
 inoremenu XHtml.Comment<Tab>;co <!--  --><Esc>F i
endif
"----------
"[a] tag
nnoremap <buffer> ;aa O<a href=""></a><Esc>F<i
vnoremap <buffer> ;aa <Esc>`>a</a><Esc>`<i<a href=""><Esc>2F"a
inoremap <buffer> ;aa <a href=""></a><Esc>F<i
"----------
"[a] tag
nnoremap <buffer> ;ah O<a href=""></a><Esc>F"i
vnoremap <buffer> ;ah <Esc>`>a"></a><Esc>`<i<a href="<Esc>l
inoremap <buffer> ;ah <a href=""></a><Esc>F"i
if has("gui")
 nnoremenu XHtml.Href\ anchor<Tab>;ah O<a href=""></a><Esc>F"i
 vnoremenu XHtml.Href\ anchor<Tab>;ah <Esc>`>a"></a><Esc>`<i<a href="<Esc>l
 inoremenu XHtml.Href\ anchor<Tab>;ah <a href=""></a><Esc>F"i
endif
"----------
"[a] tag
nnoremap <buffer> ;an O<a name="" /><Esc>F"i
vnoremap <buffer> ;an <Esc>`>a" /><Esc>`<i<a name="<Esc>l
inoremap <buffer> ;an <a name="" /><Esc>F"i
if has("gui")
 nnoremenu XHtml.Name\ anchor<Tab>;an O<a name="" /><Esc>F"i
 vnoremenu XHtml.Name\ anchor<Tab>;an <Esc>`>a" /><Esc>`<i<a name="<Esc>l
 inoremenu XHtml.Name\ anchor<Tab>;an <a name="" /><Esc>F"i
endif
"----------
"[img] tag
nnoremap <buffer> ;im O<img src="" alt="" /><Esc>3F"i
vnoremap <buffer> ;im <Esc>`>a" alt="" /><Esc>`<i<a src="<Esc>l
inoremap <buffer> ;im <img src="" alt="" /><Esc>3F"i
if has("gui")
 nnoremenu XHtml.Image<Tab>;im O<img src="" alt="" /><Esc>7F"i
 vnoremenu XHtml.Image<Tab>;im <Esc>`>a" alt="" /><Esc>`<i<a src="<Esc>l
 inoremenu XHtml.Image<Tab>;im <img src="" alt="" /><Esc>7F"i
endif
"----------
"[br] tag
nnoremap <buffer> ;br O<br /><Esc>
vnoremap <buffer> ;br <Esc>`<i<br /><CR><Esc>
inoremap <buffer> ;br <br />
if has("gui")
 nnoremenu XHtml.Break<Tab>;br O<br /><Esc>
 vnoremenu XHtml.Break<Tab>;br <Esc>`<i<br /><CR><Esc>
 inoremenu XHtml.Break<Tab>;br <br />
endif
"----------
"[hr] tag
nnoremap <buffer> ;hr O<hr /><Esc>
vnoremap <buffer> ;hr <Esc>`<i<hr /><CR><Esc>
inoremap <buffer> ;hr <hr />
if has("gui")
 nnoremenu XHtml.Rule<Tab>;hr O<hr /><Esc>
 vnoremenu XHtml.Rule<Tab>;hr <Esc>`<i<hr /><CR><Esc>
 inoremenu XHtml.Rule<Tab>;hr <hr />
endif
"----------
"[big] tag
nnoremap <buffer> ;bi O<big></big><Esc>F<i
vnoremap <buffer> ;bi <Esc>`>a</big><Esc>`<i<big><Esc>l
inoremap <buffer> ;bi <big></big><Esc>F<i
if has("gui")
 nnoremenu XHtml.Format.Big<Tab>;bi O<big></big><Esc>F<i
 vnoremenu XHtml.Format.Big<Tab>;bi <Esc>`>a</big><Esc>`<i<big><Esc>l
 inoremenu XHtml.Format.Big<Tab>;bi <big></big><Esc>F<i
endif
"----------
"[b] tag
nnoremap <buffer> ;bo O<b></b><Esc>F<i
vnoremap <buffer> ;bo <Esc>`>a</b><Esc>`<i<b><Esc>l
inoremap <buffer> ;bo <b></b><Esc>F<i
if has("gui")
 nnoremenu XHtml.Format.Bold<Tab>;bo O<b></b><Esc>F<i
 vnoremenu XHtml.Format.Bold<Tab>;bo <Esc>`>a</b><Esc>`<i<b><Esc>l
 inoremenu XHtml.Format.Bold<Tab>;bo <b></b><Esc>F<i
endif
"----------
"[code] tag
nnoremap <buffer> ;cd O<code></code><Esc>F<i
vnoremap <buffer> ;cd <Esc>`>a</code><Esc>`<i<code><Esc>l
inoremap <buffer> ;cd <code></code><Esc>F<i
if has("gui")
 nnoremenu XHtml.Format.Code<Tab>;cd O<code></code><Esc>F<i
 vnoremenu XHtml.Format.Code<Tab>;cd <Esc>`>a</code><Esc>`<i<code><Esc>l
 inoremenu XHtml.Format.Code<Tab>;cd <code></code><Esc>F<i
endif
"----------
"[center] tag
nnoremap <buffer> ;ce O<center></center><Esc>F<i
vnoremap <buffer> ;ce <Esc>`>a</center><Esc>`<i<center><Esc>l
inoremap <buffer> ;ce <center></center><Esc>F<i
if has("gui")
 nnoremenu XHtml.Format.Center<Tab>;ce O<center></center><Esc>F<i
 vnoremenu XHtml.Format.Center<Tab>;ce <Esc>`>a</center><Esc>`<i<center><Esc>l
 inoremenu XHtml.Format.Center<Tab>;ce <center></center><Esc>F<i
endif
"----------
"[em] tag
nnoremap <buffer> ;em O<em></em><Esc>F<i
vnoremap <buffer> ;em <Esc>`>a</em><Esc>`<i<em><Esc>l
inoremap <buffer> ;em <em></em><Esc>F<i
if has("gui")
 nnoremenu XHtml.Format.Emphasis<Tab>;em O<em></em><Esc>F<i
 vnoremenu XHtml.Format.Emphasis<Tab>;em <Esc>`>a</em><Esc>`<i<em><Esc>l
 inoremenu XHtml.Format.Emphasis<Tab>;em <em></em><Esc>F<i
endif
"----------
"[i] tag
nnoremap <buffer> ;it O<i></i><Esc>F<i
vnoremap <buffer> ;it <Esc>`>a</i><Esc>`<i<i><Esc>l
inoremap <buffer> ;it <i></i><Esc>F<i
if has("gui")
 nnoremenu XHtml.Format.Italic<Tab>;it O<i></i><Esc>F<i
 vnoremenu XHtml.Format.Italic<Tab>;it <Esc>`>a</i><Esc>`<i<i><Esc>l
 inoremenu XHtml.Format.Italic<Tab>;it <i></i><Esc>F<i
endif
"----------
"[kbd] tag
nnoremap <buffer> ;kb O<kbd></kbd><Esc>F<i
vnoremap <buffer> ;kb <Esc>`>a</kbd><Esc>`<i<kbd><Esc>l
inoremap <buffer> ;kb <kbd></kbd><Esc>F<i
if has("gui")
 nnoremenu XHtml.Format.Keyboard<Tab>;kb O<kbd></kbd><Esc>F<i
 vnoremenu XHtml.Format.Keyboard<Tab>;kb <Esc>`>a</kbd><Esc>`<i<kbd><Esc>l
 inoremenu XHtml.Format.Keyboard<Tab>;kb <kbd></kbd><Esc>F<i
endif
"----------
"[p] tag
nnoremap <buffer> ;pp O<p></p><Esc>F<i
vnoremap <buffer> ;pp <Esc>`>a</p><Esc>`<i<p><Esc>l
inoremap <buffer> ;pp <p></p><Esc>F<i
if has("gui")
 nnoremenu XHtml.Format.Paragraph<Tab>;pp O<p></p><Esc>F<i
 vnoremenu XHtml.Format.Paragraph<Tab>;pp <Esc>`>a</p><Esc>`<i<p><Esc>l
 inoremenu XHtml.Format.Paragraph<Tab>;pp <p></p><Esc>F<i
endif
"----------
"[pre] tag
nnoremap <buffer> ;pr O<pre><CR></pre><Esc>O
vnoremap <buffer> ;pr <Esc>'>o</pre><Esc>'<O<pre><Esc>
inoremap <buffer> ;pr <pre><CR></pre><Esc>O
if has("gui")
 nnoremenu XHtml.Format.Preformat<Tab>;pr O<pre><CR></pre><Esc>O
 vnoremenu XHtml.Format.Preformat<Tab>;pr <Esc>'>o</pre><Esc>'<O<pre><Esc>
 inoremenu XHtml.Format.Preformat<Tab>;pr <pre><CR></pre><Esc>O
endif
"----------
"[small] tag
nnoremap <buffer> ;sm O<small></small><Esc>F<i
vnoremap <buffer> ;sm <Esc>`>a</small><Esc>`<i<small><Esc>l
inoremap <buffer> ;sm <small></small><Esc>F<i
if has("gui")
 nnoremenu XHtml.Format.Small<Tab>;sm O<small></small><Esc>F<i
 vnoremenu XHtml.Format.Small<Tab>;sm <Esc>`>a</small><Esc>`<i<small><Esc>l
 inoremenu XHtml.Format.Small<Tab>;sm <small></small><Esc>F<i
endif
"----------
"[strong] tag
nnoremap <buffer> ;st O<strong></strong><Esc>F<i
vnoremap <buffer> ;st <Esc>`>a</strong><Esc>`<i<strong><Esc>l
inoremap <buffer> ;st <strong></strong><Esc>F<i
if has("gui")
 nnoremenu XHtml.Format.Strong<Tab>;st O<strong></strong><Esc>F<i
 vnoremenu XHtml.Format.Strong<Tab>;st <Esc>`>a</strong><Esc>`<i<strong><Esc>l
 inoremenu XHtml.Format.Strong<Tab>;st <strong></strong><Esc>F<i
endif
"----------
"[sub] tag
nnoremap <buffer> ;sb O<sub></sub><Esc>F<i
vnoremap <buffer> ;sb <Esc>`>a</sub><Esc>`<i<sub><Esc>l
inoremap <buffer> ;sb <sub></sub><Esc>F<i
if has("gui")
 nnoremenu XHtml.Format.Subscript<Tab>;sb O<sub></sub><Esc>F<i
 vnoremenu XHtml.Format.Subscript<Tab>;sb <Esc>`>a</sub><Esc>`<i<sub><Esc>l
 inoremenu XHtml.Format.Subscript<Tab>;sb <sub></sub><Esc>F<i
endif
"----------
"[sup] tag
nnoremap <buffer> ;sp O<sup></sup><Esc>F<i
vnoremap <buffer> ;sp <Esc>`>a</sup><Esc>`<i<sup><Esc>l
inoremap <buffer> ;sp <sup></sup><Esc>F<i
if has("gui")
 nnoremenu XHtml.Format.Superscript<Tab>;sp O<sup></sup><Esc>F<i
 vnoremenu XHtml.Format.Superscript<Tab>;sp <Esc>`>a</sup><Esc>`<i<sup><Esc>l
 inoremenu XHtml.Format.Superscript<Tab>;sp <sup></sup><Esc>F<i
endif
"----------
"[tt] tag
nnoremap <buffer> ;tt O<tt></tt><Esc>F<i
vnoremap <buffer> ;tt <Esc>`>a</tt><Esc>`<i<tt><Esc>l
inoremap <buffer> ;tt <tt></tt><Esc>F<i
if has("gui")
 nnoremenu XHtml.Format.Typewriter<Tab>;tt O<tt></tt><Esc>F<i
 vnoremenu XHtml.Format.Typewriter<Tab>;tt <Esc>`>a</tt><Esc>`<i<tt><Esc>l
 inoremenu XHtml.Format.Typewriter<Tab>;tt <tt></tt><Esc>F<i
endif
"----------
"[u] tag
nnoremap <buffer> ;uu O<u></u><Esc>F<i
vnoremap <buffer> ;uu <Esc>`>a</u><Esc>`<i<u><Esc>l
inoremap <buffer> ;uu <u></u><Esc>F<i
if has("gui")
 nnoremenu XHtml.Format.Underline<Tab>;uu O<u></u><Esc>F<i
 vnoremenu XHtml.Format.Underline<Tab>;uu <Esc>`>a</u><Esc>`<i<u><Esc>l
 inoremenu XHtml.Format.Underline<Tab>;uu <u></u><Esc>F<i
endif
"----------
"[var] tag
nnoremap <buffer> ;va O<var></var><Esc>F<i
vnoremap <buffer> ;va <Esc>`>a</var><Esc>`<i<var><Esc>l
inoremap <buffer> ;va <var></var><Esc>F<i
if has("gui")
 nnoremenu XHtml.Format.Variable<Tab>;va O<var></var><Esc>F<i
 vnoremenu XHtml.Format.Variable<Tab>;va <Esc>`>a</var><Esc>`<i<var><Esc>l
 inoremenu XHtml.Format.Variable<Tab>;va <var></var><Esc>F<i
endif
"----------
"[h1] tag
nnoremap <buffer> ;h1 O<h1></h1><Esc>F<i
vnoremap <buffer> ;h1 <Esc>`>a</h1><Esc>`<i<h1><Esc>l
inoremap <buffer> ;h1 <h1></h1><Esc>F<i
if has("gui")
 nnoremenu XHtml.Heading.H1<Tab>;h1 O<h1></h1><Esc>F<i
 vnoremenu XHtml.Heading.H1<Tab>;h1 <Esc>`>a</h1><Esc>`<i<h1><Esc>l
 inoremenu XHtml.Heading.H1<Tab>;h1 <h1></h1><Esc>F<i
endif
"----------
"[h2] tag
nnoremap <buffer> ;h2 O<h2></h2><Esc>F<i
vnoremap <buffer> ;h2 <Esc>`>a</h2><Esc>`<i<h2><Esc>l
inoremap <buffer> ;h2 <h2></h2><Esc>F<i
if has("gui")
 nnoremenu XHtml.Heading.H2<Tab>;h2 O<h2></h2><Esc>F<i
 vnoremenu XHtml.Heading.H2<Tab>;h2 <Esc>`>a</h2><Esc>`<i<h2><Esc>l
 inoremenu XHtml.Heading.H2<Tab>;h2 <h2></h2><Esc>F<i
endif
"----------
"[h3] tag
nnoremap <buffer> ;h3 O<h3></h3><Esc>F<i
vnoremap <buffer> ;h3 <Esc>`>a</h3><Esc>`<i<h3><Esc>l
inoremap <buffer> ;h3 <h3></h3><Esc>F<i
if has("gui")
 nnoremenu XHtml.Heading.H3<Tab>;h3 O<h3></h3><Esc>F<i
 vnoremenu XHtml.Heading.H3<Tab>;h3 <Esc>`>a</h3><Esc>`<i<h3><Esc>l
 inoremenu XHtml.Heading.H3<Tab>;h3 <h3></h3><Esc>F<i
endif
"----------
"[h4] tag
nnoremap <buffer> ;h4 O<h4></h4><Esc>F<i
vnoremap <buffer> ;h4 <Esc>`>a</h4><Esc>`<i<h4><Esc>l
inoremap <buffer> ;h4 <h4></h4><Esc>F<i
if has("gui")
 nnoremenu XHtml.Heading.H4<Tab>;h4 O<h4></h4><Esc>F<i
 vnoremenu XHtml.Heading.H4<Tab>;h4 <Esc>`>a</h4><Esc>`<i<h4><Esc>l
 inoremenu XHtml.Heading.H4<Tab>;h4 <h4></h4><Esc>F<i
endif
"----------
"[h5] tag
nnoremap <buffer> ;h5 O<h5></h5><Esc>F<i
vnoremap <buffer> ;h5 <Esc>`>a</h5><Esc>`<i<h5><Esc>l
inoremap <buffer> ;h5 <h5></h5><Esc>F<i
if has("gui")
 nnoremenu XHtml.Heading.H5<Tab>;h5 O<h5></h5><Esc>F<i
 vnoremenu XHtml.Heading.H5<Tab>;h5 <Esc>`>a</h5><Esc>`<i<h5><Esc>l
 inoremenu XHtml.Heading.H5<Tab>;h5 <h5></h5><Esc>F<i
endif
"----------
"[h6] tag
nnoremap <buffer> ;h6 O<h6></h6><Esc>F<i
vnoremap <buffer> ;h6 <Esc>`>a</h6><Esc>`<i<h6><Esc>l
inoremap <buffer> ;h6 <h6></h6><Esc>F<i
if has("gui")
 nnoremenu XHtml.Heading.H6<Tab>;h6 O<h6></h6><Esc>F<i
 vnoremenu XHtml.Heading.H6<Tab>;h6 <Esc>`>a</h6><Esc>`<i<h6><Esc>l
 inoremenu XHtml.Heading.H6<Tab>;h6 <h6></h6><Esc>F<i
endif
"----------
"[ol] tag
nnoremap <buffer> ;ol O<ol><CR></ol><Esc>O <li></li><Esc>F<i
vnoremap <buffer> ;ol <Esc>`>o</ol><Esc>:'<,'>s/^\(\s*\)\(.*\)$/\1 <li>\2<\/li>/<CR>`<O<BS><ol><Esc>
inoremap <buffer> ;ol <ol><CR></ol><Esc>O <li></li><Esc>F<i
if has("gui")
 nnoremenu XHtml.List.Ordered\ list<Tab>;ol O<ol><CR></ol><Esc>O <li></li><Esc>F<i
 vnoremenu XHtml.List.Ordered\ list<Tab>;ol <Esc>`>o</ol><Esc>:'<,'>s/^\(\s*\)\(.*\)$/\1 <li>\2<\/li>/<CR>`<O<BS><ol><Esc>
 inoremenu XHtml.List.Ordered\ list<Tab>;ol <ol><CR></ol><Esc>O <li></li><Esc>F<i
endif
"----------
"[p] tags
vnoremap <buffer> ;lp <Esc>`><Esc>:'<,'>s/^\(\s*\)\(.*\)$/\1<p>\2<\/p>/<CR>`<<Esc>:silent noh<Bar>echo<CR> 
"----------
"[ul] tag
nnoremap <buffer> ;ul O<ul><CR></ul><Esc>O	<li></li><Esc>F<i
vnoremap <buffer> ;ul <Esc>`>o</ul><Esc>:'<,'>s/^\(\s*\)\(.*\)$/\1	<li>\2<\/li>/<CR>`<O<BS><ul><Esc>:silent noh<Bar>echo<CR> 
inoremap <buffer> ;ul <ul><CR></ul><Esc>O	<li></li><Esc>F<i
if has("gui")
 nnoremenu XHtml.List.Unordered\ list<Tab>;ul O<ul><CR></ul><Esc>O <li></li><Esc>F<i
 vnoremenu XHtml.List.Unordered\ list<Tab>;ul <Esc>`>o</ul><Esc>:'<,'>s/^\(\s*\)\(.*\)$/\1 <li>\2<\/li>/<CR>`<O<BS><ul><Esc>
 inoremenu XHtml.List.Unordered\ list<Tab>;ul <ul><CR></ul><Esc>O <li></li><Esc>F<i
endif
"----------
"[li] tag
nnoremap <buffer> ;li O<li></li><Esc>F<i
vnoremap <buffer> ;li <Esc>`>a</li><Esc>`<i<li><Esc>l
inoremap <buffer> ;li <li></li><Esc>F<i
if has("gui")
 nnoremenu XHtml.List.List\ item<Tab>;li O<li></li><Esc>F<i
 vnoremenu XHtml.List.List\ item<Tab>;li <Esc>`>a</li><Esc>`<i<li><Esc>l
 inoremenu XHtml.List.List\ item<Tab>;li <li></li><Esc>F<i
endif
"----------
"[dl] tag
nnoremap <buffer> ;dl O<dl><CR></dl><Esc>O 
vnoremap <buffer> ;dl <Esc>`>o</dl><Esc>:'<,'>s/^\(\s*\)\(\w*\)\(\s*\)\(.*\)$/\1 <dt>\2<\/dt>\3<dd>\4<\/dd>/<CR>`<O<BS><dl><Esc>
inoremap <buffer> ;dl <dl><CR></dl><Esc>O 
if has("gui")
 nnoremenu XHtml.List.Definition\ list<Tab>;dl O<dl><CR></dl><Esc>O 
 vnoremenu XHtml.List.Definition\ list<Tab>;dl <Esc>`>o</dl><Esc>:'<,'>s/^\(\s*\)\(\w*\)\(\s*\)\(.*\)$/\1 <dt>\2<\/dt>\3<dd>\4<\/dd>/<CR>`<O<BS><dl><Esc>
 inoremenu XHtml.List.Definition\ list<Tab>;dl <dl><CR></dl><Esc>O 
endif
"----------
"[dt] tag
nnoremap <buffer> ;dt O<dt></dt><Esc>F<i
vnoremap <buffer> ;dt <Esc>`>a</dt><Esc>`<i<dt><Esc>l
inoremap <buffer> ;dt <dt></dt><Esc>F<i
if has("gui")
 nnoremenu XHtml.List.Definition\ term<Tab>;dt O<dt></dt><Esc>F<i
 vnoremenu XHtml.List.Definition\ term<Tab>;dt <Esc>`>a</dt><Esc>`<i<dt><Esc>l
 inoremenu XHtml.List.Definition\ term<Tab>;dt <dt></dt><Esc>F<i
endif
"----------
"[dd] tag
nnoremap <buffer> ;dd O<dd></dd><Esc>F<i
vnoremap <buffer> ;dd <Esc>`>a</dd><Esc>`<i<dd><Esc>l
inoremap <buffer> ;dd <dd></dd><Esc>F<i
if has("gui")
 nnoremenu XHtml.List.Definition\ desc<Tab>;dd O<dd></dd><Esc>F<i
 vnoremenu XHtml.List.Definition\ desc<Tab>;dd <Esc>`>a</dd><Esc>`<i<dd><Esc>l
 inoremenu XHtml.List.Definition\ desc<Tab>;dd <dd></dd><Esc>F<i
endif
"----------
"[table] tag
nnoremap <buffer> ;ta O<table><CR></table><Esc>O
vnoremap <buffer> ;ta <Esc>'>o</table><Esc>'<O<table><Esc>
inoremap <buffer> ;ta <table><CR></table><Esc>O
if has("gui")
 nnoremenu XHtml.Table.Table<Tab>;ta O<table><CR></table><Esc>O
 vnoremenu XHtml.Table.Table<Tab>;ta <Esc>'>o</table><Esc>'<O<table><Esc>
 inoremenu XHtml.Table.Table<Tab>;ta <table><CR></table><Esc>O
endif
"----------
"[caption] tag
nnoremap <buffer> ;ca O<caption></caption><Esc>F<i
vnoremap <buffer> ;ca <Esc>`>a</caption><Esc>`<i<caption><Esc>l
inoremap <buffer> ;ca <caption></caption><Esc>F<i
if has("gui")
 nnoremenu XHtml.Table.Caption<Tab>;ca O<caption></caption><Esc>F<i
 vnoremenu XHtml.Table.Caption<Tab>;ca <Esc>`>a</caption><Esc>`<i<caption><Esc>l
 inoremenu XHtml.Table.Caption<Tab>;ca <caption></caption><Esc>F<i
endif
"----------
"[tr] tag
nnoremap <buffer> ;tr O<tr></tr><Esc>F<i
vnoremap <buffer> ;tr <Esc>`>a</tr><Esc>`<i<tr><Esc>l
inoremap <buffer> ;tr <tr></tr><Esc>F<i
if has("gui")
 nnoremenu XHtml.Table.Row<Tab>;tr O<tr></tr><Esc>F<i
 vnoremenu XHtml.Table.Row<Tab>;tr <Esc>`>a</tr><Esc>`<i<tr><Esc>l
 inoremenu XHtml.Table.Row<Tab>;tr <tr></tr><Esc>F<i
endif
"----------
"[th] tag
nnoremap <buffer> ;th O<th></th><Esc>F<i
vnoremap <buffer> ;th <Esc>`>a</th><Esc>`<i<th><Esc>l
inoremap <buffer> ;th <th></th><Esc>F<i
if has("gui")
 nnoremenu XHtml.Table.Heading<Tab>;th O<th></th><Esc>F<i
 vnoremenu XHtml.Table.Heading<Tab>;th <Esc>`>a</th><Esc>`<i<th><Esc>l
 inoremenu XHtml.Table.Heading<Tab>;th <th></th><Esc>F<i
endif
"----------
"[td] tag
nnoremap <buffer> ;td O<td></td><Esc>F<i
vnoremap <buffer> ;td <Esc>`>a</td><Esc>`<i<td><Esc>l
inoremap <buffer> ;td <td></td><Esc>F<i
if has("gui")
 nnoremenu XHtml.Table.Data<Tab>;td O<td></td><Esc>F<i
 vnoremenu XHtml.Table.Data<Tab>;td <Esc>`>a</td><Esc>`<i<td><Esc>l
 inoremenu XHtml.Table.Data<Tab>;td <td></td><Esc>F<i
endif
"----------
"[form] tag
nnoremap <buffer> ;fo O<form><CR></form><Esc>O
vnoremap <buffer> ;fo <Esc>'>o</form><Esc>'<O<form><Esc>
inoremap <buffer> ;fo <form><CR></form><Esc>O
if has("gui")
 nnoremenu XHtml.Form.Form<Tab>;fo O<form><CR></form><Esc>O
 vnoremenu XHtml.Form.Form<Tab>;fo <Esc>'>o</form><Esc>'<O<form><Esc>
 inoremenu XHtml.Form.Form<Tab>;fo <form><CR></form><Esc>O
endif
"----------
"[input] tag
nnoremap <buffer> ;in O<input name="" id="" type="" value="" /><Esc>7F"i
inoremap <buffer> ;in <input name="" id="" type="" value="" /><Esc>7F"i
"----------
"[textarea] tag
nnoremap <buffer> ;te O<textarea><CR></textarea><Esc>O
vnoremap <buffer> ;te <Esc>'>o</textarea><Esc>'<O<textarea><Esc>
inoremap <buffer> ;te <textarea><CR></textarea><Esc>O
if has("gui")
 nnoremenu XHtml.Form.Textarea<Tab>;te O<textarea><CR></textarea><Esc>O
 vnoremenu XHtml.Form.Textarea<Tab>;te <Esc>'>o</textarea><Esc>'<O<textarea><Esc>
 inoremenu XHtml.Form.Textarea<Tab>;te <textarea><CR></textarea><Esc>O
endif
"----------
"[button] tag
nnoremap <buffer> ;bu O<button></button><Esc>F<i
vnoremap <buffer> ;bu <Esc>`>a</button><Esc>`<i<button><Esc>l
inoremap <buffer> ;bu <button></button><Esc>F<i
if has("gui")
 nnoremenu XHtml.Form.Button<Tab>;bu O<button></button><Esc>F<i
 vnoremenu XHtml.Form.Button<Tab>;bu <Esc>`>a</button><Esc>`<i<button><Esc>l
 inoremenu XHtml.Form.Button<Tab>;bu <button></button><Esc>F<i
endif
"----------
"[select] tag
nnoremap <buffer> ;se O<select><CR></select><Esc>O
vnoremap <buffer> ;se <Esc>'>o</select><Esc>'<O<select><Esc>
inoremap <buffer> ;se <select><CR></select><Esc>O
if has("gui")
 nnoremenu XHtml.Form.Select<Tab>;se O<select><CR></select><Esc>O
 vnoremenu XHtml.Form.Select<Tab>;se <Esc>'>o</select><Esc>'<O<select><Esc>
 inoremenu XHtml.Form.Select<Tab>;se <select><CR></select><Esc>O
endif
"----------
"[option] tag
nnoremap <buffer> ;op O<option value=""></option><Esc>F"i
vnoremap <buffer> ;op <Esc>`>a"></option><Esc>`<i<a value="<Esc>l
inoremap <buffer> ;op <option value=""></option><Esc>F"i
if has("gui")
 nnoremenu XHtml.Form.Option<Tab>;op O<option value=""></option><Esc>F"i
 vnoremenu XHtml.Form.Option<Tab>;op <Esc>`>a"></option><Esc>`<i<a value="<Esc>l
 inoremenu XHtml.Form.Option<Tab>;op <option value=""></option><Esc>F"i
endif
"----------
"[abbr] tag
nnoremap <buffer> ;ab O<abbr></abbr><Esc>F<i
vnoremap <buffer> ;ab <Esc>`>a</abbr><Esc>`<i<abbr><Esc>l
inoremap <buffer> ;ab <abbr></abbr><Esc>F<i
"----------
"[acronym] tag
nnoremap <buffer> ;ac O<acronym></acronym><Esc>F<i
vnoremap <buffer> ;ac <Esc>`>a</acronym><Esc>`<i<acronym><Esc>l
inoremap <buffer> ;ac <acronym></acronym><Esc>F<i
"----------
"[address] tag
nnoremap <buffer> ;ad O<address></address><Esc>F<i
vnoremap <buffer> ;ad <Esc>`>a</address><Esc>`<i<address><Esc>l
inoremap <buffer> ;ad <address></address><Esc>F<i
"----------
"[area] tag
nnoremap <buffer> ;ar O<area href="" alt="" shape="" coords="" /><Esc>7F"i
vnoremap <buffer> ;ar <Esc>`>a" alt="" shape="" coords="" /><Esc>`<i<a href="<Esc>l
inoremap <buffer> ;ar <area href="" alt="" shape="" coords="" /><Esc>7F"i
"----------
"[base] tag
nnoremap <buffer> ;ba O<base href="" /><Esc>F"i
vnoremap <buffer> ;ba <Esc>`>a" /><Esc>`<i<a href="<Esc>l
inoremap <buffer> ;ba <base href="" /><Esc>F"i
"----------
"[body] tag
nnoremap <buffer> ;bd O<body><CR></body><Esc>O
vnoremap <buffer> ;bd <Esc>'>o</body><Esc>'<O<body><Esc>
inoremap <buffer> ;bd <body><CR></body><Esc>O
"----------
"[blockquote] tag
nnoremap <buffer> ;bl O<blockquote><CR></blockquote><Esc>O
vnoremap <buffer> ;bl <Esc>'>o</blockquote><Esc>'<O<blockquote><Esc>
inoremap <buffer> ;bl <blockquote><CR></blockquote><Esc>O
"----------
"[cite] tag
nnoremap <buffer> ;ci O<cite></cite><Esc>F<i
vnoremap <buffer> ;ci <Esc>`>a</cite><Esc>`<i<cite><Esc>l
inoremap <buffer> ;ci <cite></cite><Esc>F<i
"----------
"[div] tag
nnoremap <buffer> ;di O<div><CR></div><Esc>O
vnoremap <buffer> ;di <Esc>'>o</div><Esc>'<O<div><Esc>
inoremap <buffer> ;di <div><CR></div><Esc>O
"----------
"[frame] tag
nnoremap <buffer> ;fr O<frame name="" src="" title="" /><Esc>5F"i
vnoremap <buffer> ;fr <Esc>`>a" src="" title="" /><Esc>`<i<a name="<Esc>l
inoremap <buffer> ;fr <frame name="" src="" title="" /><Esc>5F"i
"----------
"[frameset] tag
nnoremap <buffer> ;fs O<frameset><CR></frameset><Esc>O
vnoremap <buffer> ;fs <Esc>'>o</frameset><Esc>'<O<frameset><Esc>
inoremap <buffer> ;fs <frameset><CR></frameset><Esc>O
"----------
"[head] tag
nnoremap <buffer> ;he O<head><CR></head><Esc>O
vnoremap <buffer> ;he <Esc>'>o</head><Esc>'<O<head><Esc>
inoremap <buffer> ;he <head><CR></head><Esc>O
"----------
"[html] tag
nnoremap <buffer> ;ht O<html><CR></html><Esc>O
vnoremap <buffer> ;ht <Esc>'>o</html><Esc>'<O<html><Esc>
inoremap <buffer> ;ht <html><CR></html><Esc>O
"----------
"[iframe] tag
nnoremap <buffer> ;if O<iframe><CR></iframe><Esc>O
vnoremap <buffer> ;if <Esc>'>o</iframe><Esc>'<O<iframe><Esc>
inoremap <buffer> ;if <iframe><CR></iframe><Esc>O
"----------
"[link] tag
nnoremap <buffer> ;ln O<link href="" /><Esc>F"i
vnoremap <buffer> ;ln <Esc>`>a" /><Esc>`<i<a href="<Esc>l
inoremap <buffer> ;ln <link href="" /><Esc>F"i
"----------
"[map] tag
nnoremap <buffer> ;ma O<map name="" alt="" /><Esc>3F"i
vnoremap <buffer> ;ma <Esc>`>a" alt="" /><Esc>`<i<a name="<Esc>l
inoremap <buffer> ;ma <map name="" alt="" /><Esc>3F"i
"----------
"[meta] tag
nnoremap <buffer> ;me O<meta name="" content="" /><Esc>3F"i
vnoremap <buffer> ;me <Esc>`>a" content="" /><Esc>`<i<a name="<Esc>l
inoremap <buffer> ;me <meta name="" content="" /><Esc>3F"i
"----------
"[noframes] tag
nnoremap <buffer> ;nf O<noframes><CR></noframes><Esc>O
vnoremap <buffer> ;nf <Esc>'>o</noframes><Esc>'<O<noframes><Esc>
inoremap <buffer> ;nf <noframes><CR></noframes><Esc>O
"----------
"[noscript] tag
nnoremap <buffer> ;ns O<noscript><CR></noscript><Esc>O
vnoremap <buffer> ;ns <Esc>'>o</noscript><Esc>'<O<noscript><Esc>
inoremap <buffer> ;ns <noscript><CR></noscript><Esc>O
"----------
"[q] tag
nnoremap <buffer> ;qq O<q></q><Esc>F<i
vnoremap <buffer> ;qq <Esc>`>a</q><Esc>`<i<q><Esc>l
inoremap <buffer> ;qq <q></q><Esc>F<i
"----------
"[span] tag
nnoremap <buffer> ;sn O<span></span><Esc>F<i
vnoremap <buffer> ;sn <Esc>`>a</span><Esc>`<i<span><Esc>l
inoremap <buffer> ;sn <span></span><Esc>F<i
"----------
"[samp] tag
nnoremap <buffer> ;sa O<samp></samp><Esc>F<i
vnoremap <buffer> ;sa <Esc>`>a</samp><Esc>`<i<samp><Esc>l
inoremap <buffer> ;sa <samp></samp><Esc>F<i
"----------
"[script] tag
nnoremap <buffer> ;sc O<script type=""></script><Esc>F"i
vnoremap <buffer> ;sc <Esc>`>a"></script><Esc>`<i<a type="<Esc>l
inoremap <buffer> ;sc <script type=""></script><Esc>F"i
"----------
"amp
nnoremap <buffer> ;& i&amp;<Esc>l
vnoremap <buffer> ;& <Esc>`<i&amp;<Esc>
inoremap <buffer> ;& &amp;
"----------
"copy
nnoremap <buffer> ;cp i&copy;<Esc>l
vnoremap <buffer> ;cp <Esc>`<i&copy;<Esc>
inoremap <buffer> ;cp &copy;
"----------
"lt
nnoremap <buffer> ;< i&lt;<Esc>l
vnoremap <buffer> ;< <Esc>`<i&lt;<Esc>
inoremap <buffer> ;< &lt;
"----------
"gt
nnoremap <buffer> ;> i&gt;<Esc>l
vnoremap <buffer> ;> <Esc>`<i&gt;<Esc>
inoremap <buffer> ;> &gt;
"----------
"[fieldset] tag
nnoremap <buffer> ;fi O<fieldset><CR></fieldset><Esc>O
vnoremap <buffer> ;fi <Esc>'>o</fieldset><Esc>'<O<fieldset><Esc>
inoremap <buffer> ;fi <fieldset><CR></fieldset><Esc>O
"----------
"[legend] tag
nnoremap <buffer> ;le O<legend></legend><Esc>F<i
vnoremap <buffer> ;le <Esc>`>a</legend><Esc>`<i<legend><Esc>l
inoremap <buffer> ;le <legend></legend><Esc>F<i
"----------
"[label] tag
nnoremap <buffer> ;la O<label for=""></label><Esc>F"i
vnoremap <buffer> ;la <Esc>`>a</label><Esc>`<i<label for=""><Esc>2F"a
inoremap <buffer> ;la <label for=""></label><Esc>F"i
"----------
"[optgroup] tag
nnoremap <buffer> ;og O<optgroup><CR></optgroup><Esc>O
vnoremap <buffer> ;og <Esc>'>o</optgroup><Esc>'<O<optgroup><Esc>
inoremap <buffer> ;og <optgroup><CR></optgroup><Esc>O
"----------
"[php] tag
nnoremap <buffer> ;ph a<?php  ?><Esc>hh
inoremap <buffer> ;ph <?php  ?><Esc>hhi

"attributes
inoremap <buffer> ;cl class=""<Esc>i
inoremap <buffer> ;id id=""<Esc>i
inoremap <buffer> ;ti title=""<Esc>i

" Jump to next attribute field
nnoremap <buffer>	<C-J>	/\M="\\|>/e;/\S/<CR>
inoremap <buffer>	<C-J>	<C-O>/\M="\\|>/e;/\S/<CR>

" HTML quoting

function! s:HtmlQuote(l1,l2)
  let i = a:l1
  while i <= a:l2
    let l = getline(i)
    let l = substitute( l, '&', '\&amp;', 'g' )
    let l = substitute( l, '<', '\&lt;', 'g' )
    let l = substitute( l, '>', '\&gt;', 'g' )
    call setline( i, l )
    let i = i+1
  endwhile
endfunction

function! s:HtmlUnquote(l1,l2)
  let i = a:l1
  while i <= a:l2
    let l = getline(i)
    let l = substitute( l, '&gt;', '>', 'g' )
    let l = substitute( l, '&lt;', '<', 'g' )
    let l = substitute( l, '&amp;', '\&', 'g' )
    call setline( i, l )
    let i = i+1
  endwhile
endfunction

command! -buffer -range Quote   call s:HtmlQuote(<line1>,<line2>)
command! -buffer -range Unquote call s:HtmlUnquote(<line1>,<line2>)
