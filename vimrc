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
Bundle 'Markdown'
Bundle 'Textile-for-VIM'
" Bundle 'ruby.vim'
" Bundle 'repmo.vim' " This one gets rid of my j and k mappings :(
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

let mapleader = ','
" Window navigation shortcuts "
nnoremap <Leader>s s
nnoremap <Leader>v v
nnoremap <Leader>- -
nnoremap <Leader>= +
nnoremap <Leader>_ _
nnoremap <Leader>| |
nnoremap <Leader>+ =
nnoremap <Leader>j j
nnoremap <Leader>k k
nnoremap <Leader>l l
nnoremap <Leader>h h
nnoremap <Leader>w w
nnoremap <Leader>c c
nnoremap <Leader>o o
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

nnoremap <F2> :e <UP><CR>
nnoremap <F3> :e <UP><UP><CR>
nnoremap <F4> :e <UP><UP><UP><CR>
nnoremap <F5> :e <UP><UP><UP><UP><CR>
nnoremap <F6> :e <UP><UP><UP><UP><UP><CR>
nnoremap <F7> :e <UP><UP><UP><UP><UP><UP><CR>
nnoremap <F8> :e <UP><UP><UP><UP><UP><UP><UP><CR>
nnoremap <F9> :e <UP><UP><UP><UP><UP><UP><UP><UP><CR>
nnoremap <F10> :e <UP><UP><UP><UP><UP><UP><UP><UP><UP><CR>
nnoremap <F11> :e <UP><UP><UP><UP><UP><UP><UP><UP><UP><UP><CR>
nnoremap <F12> :update<CR>

nnoremap <S-F5> :w<CR>:!texexec --xetex --purgeall "%"<CR>
nnoremap <S-F6> :w<CR>:!texexec --pdf --purgeall "%"<CR>
nnoremap <S-F7> :w<CR>:!texexec --lua "%"<CR>

nnoremap <S-F9> :update<CR>:!ruby -rdebug "%"<CR>
nnoremap <S-F11> :update<CR>:!ruby "%"<CR>
nnoremap <S-F12> :update<CR>:!python "%"<CR>

" C compilation mappings "
nnoremap <Leader>1 :update<CR>:!gcc %:p -o %:p:r -lm -std=c99<CR>
nnoremap <Leader>2 :update<CR>:!gcc %:p -o %:p:r -lm -std=c99 && ./%:t:r<CR>
nnoremap <Leader>3 :!./%:t:r<CR>
" "

" CTAGS setup/mapping (for all programming languages... not just C) "
" only needs to be run once per file if AutoTags plugin is installed "
nnoremap <Leader>8 :let g:ctags_path='/usr/bin/ctags'<CR>
nnoremap <Leader>9 :let g:ctags_args='-I __declspec+'<CR>
nnoremap <Leader>0 :CTAGS<CR>
" "


nnoremap <S-C-F2> :cd ~/<CR>

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

