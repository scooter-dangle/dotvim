func Eatchar(pat)
   let c = nr2char(getchar(0))       
   return (c =~ a:pat) ? '' : c      
endfunc

iabbrev <silent> <? <?=?><Left><Left><C-R>=Eatchar('\s')<CR>
