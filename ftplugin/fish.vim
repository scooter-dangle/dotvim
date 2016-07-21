" Set up :make to use fish for syntax checking.
compiler fish

" Set this to have long lines wrap inside comments.
setlocal textwidth=79
nnoremap <buffer> <Leader>r :w !fish<CR>

" Enable folding of block structures in fish.
" setlocal foldmethod=expr
