set nocompatible
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
" 
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-speeddating'
Bundle 'scrooloose/nerdtree'
Bundle 'nathanaelkane/vim-indent-guides'
" vim-scripts repos
Bundle 'vim-coffee-script'
Bundle 'ruby-matchit'
" Bundle 'ruby.vim'
Bundle 'bufexplorer.zip'
Bundle 'yaifa.vim'
Bundle 'ftpluginruby.vim'
Bundle 'repeat.vim'
Bundle 'ctags.vim'
Bundle 'AutoTag'
Bundle 'snipMate'
" Bundle ''
" Bundle ''
" non github repos
" Bundle ''

filetype plugin indent on " required!


set incsearch
set shortmess=nIat
set rulerformat=%15(%c\ %l\ %p%%%)
set autoindent
set showcmd
set linebreak
set nrformats=hex,alpha

" Fewer warnings when switching changed buffers "
set hidden
" "

" Color scheme "
colorscheme desert256
" "

" Shorthand system "
source ~/.vim/abbrevlist-devel.vim
" "

" Totally awesome extension of
" the Q keystroke in input mode
" to enable lambda-like function-
" ality. Was kindly provided by
" ZyX in the vim-use forum in
" response to my posting."
source ~/.vim/Q-lambda-extension.vim
" "

" Additional mappings "
source ~/.vim/additionalMappings.vim
" "


" Show highlighting groups for current word "
source ~/.vim/syntaxHighlightInspect.vim
" "

" Language-specific auto-complete from syntax highlighting files "
filetype plugin indent on
    if has("autocmd") && exists("+omnifunc")
	autocmd Filetype *
		    \	if &omnifunc == "" |
		    \		setlocal omnifunc=syntaxcomplete#Complete |
		    \	endif
    endif
" "

" Allow Ruby functions ending with ? or ! to be found as tags by Vim (ctags) "
set iskeyword+=?
set iskeyword+=!
" "

" Additional ruby auto-complete options
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
" "

" Allow '%' jump between if/class/etc blocks
" source ~/.vim/ruby-matchit.vim
" "

" Window navigation shortcuts "
nnoremap ,s s
nnoremap ,v v
nnoremap ,- -
nnoremap ,= +
nnoremap ,_ _
nnoremap ,| |
nnoremap ,+ =
nnoremap ,j j
nnoremap ,k k
nnoremap ,l l
nnoremap ,h h
nnoremap ,w w
nnoremap ,c c
nnoremap ,o o
" "

" Window navigation shortcuts "
nnoremap s s
nnoremap v v
nnoremap - -
nnoremap = +
nnoremap _ _
nnoremap | |
nnoremap + =
nnoremap j j
nnoremap k k
nnoremap l l
nnoremap h h
nnoremap w w
nnoremap c c
nnoremap o o
" "

nnoremap k gk
nnoremap j gj
nnoremap <UP> <C-Y>
nnoremap <DOWN> <C-E>
" For some reason these lines won't work  :(   "
" nnoremap <C-S-K> <C-Y>
" nnoremap <C-S-J> <C-E>
" "
nnoremap <C-K> <C-Y>k
nnoremap <C-J> <C-E>j

cnoremap up cd ..

map <F2> :e <UP><CR>
map <F3> :e <UP><UP><CR>
map <F4> :e <UP><UP><UP><CR>
map <F5> :e <UP><UP><UP><UP><CR>
map <F6> :e <UP><UP><UP><UP><UP><CR>
map <F7> :e <UP><UP><UP><UP><UP><UP><CR>
map <F8> :e <UP><UP><UP><UP><UP><UP><UP><CR>
map <F9> :e <UP><UP><UP><UP><UP><UP><UP><UP><CR>
map <F10> :e <UP><UP><UP><UP><UP><UP><UP><UP><UP><CR>
map <F11> :e <UP><UP><UP><UP><UP><UP><UP><UP><UP><UP><CR>
map <F12> :update<CR>

map <S-F5> :w<CR>:!texexec --xetex --purgeall "%"<CR>
map <S-F6> :w<CR>:!texexec --pdf --purgeall "%"<CR>
map <S-F7> :w<CR>:!texexec --lua "%"<CR>

map <S-F9> :update<CR>:!ruby -rdebug "%"<CR>
map <S-F11> :update<CR>:!ruby "%"<CR>
map <S-F12> :update<CR>:!python "%"<CR>

map <S-C-F2> :cd ~/<CR>

" Command to restore cursor position "
if has("autocmd")
	" Enable filetype detection
	filetype plugin indent on

	" Restore cursor position
	autocmd BufReadPost *
		\ if line("'\"") > 1 && line("'\"") <= line("$") |
		\   exe "normal! g`\"" |
		\ endif
endif
" "

" Not sure if I can get the following to work "
" nnoremap , <Leader>
" nnoremap ,p <CR>w

" NERDTree mapping "
nnoremap <Leader>n :NERDTree samp<CR>
" "

