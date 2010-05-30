" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

xmap ;pp stp<CR>f>l
imap ;pp <p></p><Esc>F<i

" use ;;p* instead!
"xmap ;lp <Esc>`><Esc>:'<,'>s/^\(\s*\)\(.*\)$/\1<p>\2<\/p>/<CR>`<<Esc>:silent noh<Bar>echo<CR> 

xmap ;em stem<CR>f>l
imap ;em <em></em><Esc>F<i

xmap ;st ststrong<CR>f>l
imap ;st <strong></strong><Esc>F<i

xmap ;span stspan<CR>f>l
imap ;sn <span></span><Esc>F<i

xmap ;small stsmall<CR>f>l
imap ;sm <small></small><Esc>F<i

xmap ;sp stsup<CR>f>l
imap ;sp <sup></sup><Esc>F<i

imap ;br <br />

xmap ;aa sta href=""<CR>f"a
imap ;aa <a href=""></a><Esc>F<i
xmap ;ap sta href=""<CR>f"pf>l

imap ;ph <?php  ?><Esc>hhi

imap ;cl class=""<Esc>i
