inoremap <silent> qjq <Esc>

func Eatchar(pat)
	let c = nr2char(getchar(0))
	return (c =~ a:pat) ? '' : c
endfunc

"inoreabbrev <silent> \'e é<Left><BS><Right><C-R>=Eatchar('\s')<CR>
"inoreabbrev <silent> \`e è<Left><BS><Right><C-R>=Eatchar('\s')<CR>
"inoreabbrev <silent> \"e ë<Left><BS><Right><C-R>=Eatchar('\s')<CR>
"inoreabbrev <silent> \-e ē<Left><BS><Right><C-R>=Eatchar('\s')<CR>
"inoreabbrev <silent> \^e ê<Left><BS><Right><C-R>=Eatchar('\s')<CR>
"inoreabbrev <silent> \/e ě<Left><BS><Right><C-R>=Eatchar('\s')<CR>

inoremap \'e é
inoremap \`e è
inoremap \"e ë
inoremap \-e ē
inoremap \^e ê
inoremap \/e ě

