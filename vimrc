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
set nu


" Fewer warnings when switching changed buffers "
set hidden
" "

" Color scheme "
colorscheme desert256
" "

" Shorthand system "
source ~/.vim/abbrevlist-devel.vim
" "

" Totally awesome extension of    "
" the Q keystroke in input mode   "
" to enable lambda-like function- "
" ality. Was kindly provided by   "
" ZyX in the vim-use forum in     "
" response to my posting.         "
" source ~/.vim/Q-lambda-extension.vim
" "

" Additional mappings "
source ~/.vim/additionalMappings.vim
" "

" Test extending matchit for ruby "
" source ~/.vim/ruby-matchit-2.vim
" "

" Test minimap "
" source ~/.vim/1470884/.vimrc
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

" Additional ruby auto-complete options "
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
" "

" Set snipMate directory "
let g:snippets_dir = '~/.vim/snippets'
" "

" Useful for when using snipMate and in general, I think. "
" Are there some languages where I shouldn't use this?    "
" (And don't just say pig-latin, you jerk.)               "
set expandtab
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
nnoremap <Leader>> >
nnoremap <Leader>< <
" "
nnoremap <Leader>bd sj:bdj

" Save-so-Much! "
nnoremap <Leader><Leader> :w<CR>
" "

" Buffer navigation shortcuts "
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>
" "

" NERDTree mapping "
nnoremap <Leader>N :NERDTree samp<CR>
" "

" The first 2 of these are only useful when :set wrap is on. "
" pretty lousy when navigating code. Might want to put them  "
" in an ftplugin for txt or something.                       "
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

nnoremap <S-F5> :w<CR>:!texexec --xetex --purgeall "%"<CR>
nnoremap <S-F6> :w<CR>:!texexec --pdf --purgeall "%"<CR>
nnoremap <S-F7> :w<CR>:!texexec --lua "%"<CR>

nnoremap <S-F12> :update<CR>:!python "%"<CR>

" CTAGS setup/mapping (for all programming languages... not just C)  "
" only needs to be run once per file if AutoTags plugin is installed "
nnoremap <Leader>8 :let g:ctags_path='/usr/bin/ctags'<CR>
nnoremap <Leader>9 :let g:ctags_args='-I __declspec+'<CR>
nnoremap <Leader>0 :CTAGS<CR>
" "

" Execution of interpreted languages (with proper hash-bang markup) "
nnoremap <Leader>E :w<CR>:!chmod 744 %<CR>
nnoremap <Leader>e :w<CR>:!./%<CR>

" Recommended in help files for auto-complete "
inoremap  
inoremap  
inoremap  
inoremap  
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
