nnoremap <buffer> <Leader>r :RustRun<CR>
set hidden
let $RUST_SRC_PATH = "/Users/scott/stuffs/rust/rust/src"
let $CARGO_HOME = "/Users/scott/.cargo"
let g:racer_cmd = "/Users/scott/.cargo/bin/racer"
nmap <buffer> <C-]> gd
let g:racer_experimental_completer = 1
" let g:echodoc_enable_at_startup = 1
