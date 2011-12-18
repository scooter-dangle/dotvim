function! ToggleMinimap()
	if exists("s:isMini") && s:isMini == 0
		let s:isMini = 1
	else
		let s:isMini = 0
	end

	if (s:isMini == 0)
		" save current visible lines
		let s:firstLine = line("w0")
		let s:lastLine = line("w$")

		" resize each window
		" windo let w=winwidth(0)*12 | exe "set winwidth=" . w
		" windo let h=winheight(0)*12 | exe "set winheight=" . h

		" don't change window size
		let c = &columns * 12
		let l = &lines * 12
		exe "set columns=" . c
		exe "set lines=" . l

		" make font small
		set guifont=ProggyTiny:h1
		
		" highlight lines which were visible
		let s:lines = ""
		for i in range(s:firstLine, s:lastLine)
			let s:lines = s:lines . "\\%" . i . "l"

			if i < s:lastLine
				let s:lines = s:lines . "\\|"
			endif
		endfor

		exe 'match Visible /' . s:lines . '/'
		hi Visible guibg=lightblue guifg=black term=bold
	else
		set guifont=Menlo:h12
		hi clear Visible
	endif
endfunction

command! ToggleMinimap call ToggleMinimap()
nnoremap m :ToggleMinimap<CR>