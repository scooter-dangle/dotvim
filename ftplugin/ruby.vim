set shiftwidth=4
set nowrap
set omnifunc=rubycomplete#Complete
nnoremap <buffer> <Leader>r :w<CR>:!ruby %<CR>
nnoremap <buffer> <Leader>T :w<CR>:!rspec --color %<CR>
inoremap <buffer> <C-J><C-J> <Space>=><Space>:
" xmpfilter
nmap <buffer> <Leader>g <Plug>(xmpfilter-mark)
nmap <buffer> <Leader>G <Plug>(xmpfilter-run)
nmap <buffer> <Leader>R <Plug>(xmpfilter-mark)<Plug>(xmpfilter-run)
xmap <buffer> <Leader>g <Plug>(xmpfilter-mark)
xmap <buffer> <Leader>G <Plug>(xmpfilter-run)
xmap <buffer> <Leader>R <Plug>(xmpfilter-mark)<Plug>(xmpfilter-run)
