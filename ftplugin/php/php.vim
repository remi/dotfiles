" Même si le type de fichier est 'php', on veut pouvoir se déplacer entre
" balises HTML

if exists("loaded_matchit")
	let b:match_skip = 's:comment\|string'
	let b:match_words = '<?\(php\)\?:?>,\<switch\>:\<endswitch\>,' .
	 \ '\<if\>:\<elseif\>:\<else\>:\<endif\>,' .
	 \ '\<while\>:\<endwhile\>,\<do\>:\<while\>,' .
	 \ '\<for\>:\<endfor\>,\<foreach\>:\<endforeach\>' .
	 \ '<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,' .
	 \ '<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,' .
	 \ '<\@<=\([^/?][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>,' .
	 \ '<:>'
endif
