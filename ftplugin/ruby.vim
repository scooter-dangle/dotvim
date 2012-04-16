set shiftwidth=4
set nowrap
set omnifunc=rubycomplete#Complete
nnoremap <buffer> <Leader>r :w<CR>:!ruby %<CR>
nnoremap <buffer> <Leader>T :w<CR>:!rspec --color %<CR>
inoremap <buffer> <C-J><C-J> <Space>=><Space>:
inoremap <buffer> <C-M><C-M> <Space>=><Space>
