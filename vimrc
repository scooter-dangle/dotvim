if &shell =~# 'fish$'
    set shell=/bin/sh
endif

set nocompatible
filetype off " required!


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" " My Bundles here:

" original repos on github
Plugin 'Vim-Rspec'

Plugin 'tpope/vim-fugitive'
" Addon to 'tpope/vim-fugitive' "
Plugin 'gregsexton/gitv'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rsi'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vividchalk'

Plugin 'tpope/vim-markdown'
" Addon to tpope/vim-markdown "
Plugin 'jtratner/vim-flavored-markdown'

Plugin 'tommcdo/vim-exchange'

Plugin 'kana/vim-textobj-user.git'
" depends on kana/vim-textobj-user.git
Plugin 'textobj-rubyblock'

Plugin 'noprompt/vim-yardoc'

Plugin 'cespare/vim-toml'
Plugin 'rust-lang/rust.vim'
" Used by rust-lang/rust.vim "
Plugin 'mattn/webapi-vim'

Plugin 'racer-rust/vim-racer'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'nathanaelkane/vim-indent-guides'
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'elixir-lang/vim-elixir'
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'guns/vim-clojure-static'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'guns/vim-clojure-highlight'
Plugin 'derekwyatt/vim-scala'
Plugin 'slim-template/vim-slim'
Plugin 'hwartig/vim-seeing-is-believing'
Plugin 'arsenerei/vim-ragel'
Plugin 'leafo/moonscript-vim'
Plugin 'bling/vim-airline'
" LiveScript "
Plugin 'gkz/vim-ls'

" Io "
" Plugin 'andreimaxim/vim-io'

" Factor "
" Plugin 'scooter-dangle/vim-factor'

" Elm
Plugin 'lambdatoast/elm.vim'

" Idris "
Plugin 'idris-hackers/idris-vim'

" Fish! "
Plugin 'dag/vim-fish'
Plugin 'kana/vim-vspec'

Plugin 'typedclojure/vim-typedclojure'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'adimit/prolog.vim'

Plugin 'ekalinin/Dockerfile.vim'

Plugin 'LnL7/vim-nix'

" Plugin 'csv.vim'

" vim-scripts repos
" Plugin 'rcodetools.vim'
Plugin 'tabular'
Plugin 'Puppet-Syntax-Highlighting'
Plugin 'SyntaxRange'
Plugin 'vim-coffee-script'
Plugin 'L9'
" Am liking ctrlp such much better than FuzzyFinder
" Plugin 'FuzzyFinder'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-stylus'
" Plugin 'Command-T' " CAREFUL! CAN CRASH VIM IF NOT SET UP PROPERLY
Plugin 'EasyMotion'
" Plugin 'Markdown' "
Plugin 'VimClojure'
Plugin 'Textile-for-VIM'
Plugin 'Mercury-compiler-support'
Plugin 'go.vim'
Plugin 'jnwhiteh/vim-golang'
" Plugin 'Blackrush/vim-gocode'
" Plugin 'fatih/vim-go'
" Plugin 'Shougo/neosnippet.vim'
" Plugin 'Valloric/YouCompleteMe'
if has("lua")
    Plugin 'Shougo/neocomplete.vim'
endif

Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'

" Plugin 'vimsh'
" Plugin 'slimv.vim'
Plugin 'vim-ruby/vim-ruby'
" Plugin 'ruby.vim'
Plugin 'danchoi/ri.vim'
" Plugin 'repmo.vim' " This one gets rid of my j and k mappings :(
Plugin 'Coq-indent'
Plugin 'coq-syntax'
" Plugin 'rails.vim'
Plugin 'taglist.vim'
Plugin 'rake.vim'
Plugin 'tslime.vim'
Plugin 'bufexplorer.zip'
Plugin 'BufOnly.vim'
Plugin 'yaifa.vim'
Plugin 'ftpluginruby.vim'
Plugin 'repeat.vim'
Plugin 'ctags.vim'
Plugin 'AutoTag'

" Snippet engine "
if has("lua")
    Plugin 'SirVer/ultisnips'
endif
" snippets for ultisnips engine "
" Plugin 'honza/vim-snippets'

" snipmate (and dependences) "
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
" optional for snipMate
Plugin 'honza/vim-snippets'
Plugin 'dbext.vim'
Plugin 'sqlcomplete.vim'
" Plugin 'exu/pgsql.vim'

Plugin 'php.vim'
Plugin 'phpcomplete.vim'
Plugin 'Lisper.vim'
Plugin 'mercury.vim'
Plugin 'matchit.zip'
" Colorscheme bundles "
Plugin 'burnttoast256'
Plugin 'desert-warm-256'
Plugin 'twilight256.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'devbox-dark-256'
Plugin '256-grayvim'
Plugin 'mrkn256.vim'
Plugin 'summerfruit256.vim'
Plugin 'charged-256.vim'
Plugin 'wombat256.vim'
Plugin '256-jungle'
Plugin 'beauty256'
Plugin 'Railscasts-Theme-GUIand256color'
Plugin 'xoria256.vim'
Plugin 'colorful256.vim'
Plugin 'OceanBlack256'
Plugin 'calmar256-lightdark.vim'
" Untested (downloaded on whim)
" Plugin 'jsbeautify'
" Plugin 'Superior-Haskell-Interaction-Mode-SHIM'
" Plugin 'vim-erlang-skeleteons'
" Plugin 'Erlang_detectVariable'
" Plugin 'erlang-indent-file'
" Plugin 'Erlang-plugin-package'
" Plugin 'rubycomplete.vim'
Plugin 'coffee-check.vim'
" Plugin 'coffee-check.vim-B'
Plugin 'coffee.vim'
" non github repos
" Plugin ''

Plugin 'rking/ag.vim'

Plugin 'pelodelfuego/vim-swoop'

Plugin 'unblevable/quick-scope'

Plugin 'dermusikman/sonicpi.vim'
if !exists("g:sonicpi_enabled")
    let g:sonicpi_enabled = 0
endif

call vundle#end()         " required
filetype plugin indent on " required!

let mapleader = ' '

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

let g:swoopAutoInsertMode = 0

" Searching and things "
set incsearch
set hlsearch
nnoremap <Leader>/<ESC> :noh<CR>
" ag.vim "
nnoremap <Leader>// :Ag '/'<CR>
nnoremap <Leader>/<Leader> :Ag 
nnoremap <Leader>/k :let @/ = "<C-R><C-W>"<CR>:Ag "\b<C-R><C-W>\b"<CR>:cw<CR>
let g:agprg="ag --column --ignore log --ignore tags --ignore local.tags --ignore .min.js --ignore docs --ignore '*.dump' --ignore doc --smart-case --skip-vcs-ignores --silent"
" "
nnoremap <Leader>/s :%s///
vnoremap <Leader>/s :s///
nnoremap <Leader>/d :g///d
vnoremap <Leader>/d :///d
nnoremap <Leader>/n :g///normal 
vnoremap <Leader>/n :///normal 
" "

if has("nvim")
    nnoremap <Leader>ff :terminal fish<CR>
end

set shortmess=nIat
set rulerformat=%15(%c\ %l\ %p%%%)
set autoindent
set showcmd
set linebreak
set nrformats=hex,alpha
set nu
syntax on

" FIXME "
" Some commands from Casey "
set backup
set noswapfile
set undodir=~/.vim/tmp/undo/
set backupdir=~/.vim/tmp/backup/
set directory=~/.vim/tmp/swap

" Cursor cross-hairs "
augroup Cursorline
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
    au WinLeave * setlocal nocursorline
    au WinLeave * setlocal nocursorcolumn
augroup END
" "
" END Some commands from Casey "

" tslime mapping "
" (<C-C><C-C> no longer works for some reason :(  ) "
nnoremap <Leader>rr vip"ry:call Send_to_Tmux(@r)<CR>
vnoremap <Leader>rr "ry:call Send_to_Tmux(@r)<CR>
" "

" Set interactive shell commands (allows aliases) "
" This also ends up making mappings that include shell
" commands force vim to run as a background process
" or something. Blerg.
" set shellcmdflag=-ic
" "

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

" Fewer warnings when switching changed buffers "
set hidden
" "

" Color scheme "
" colorscheme desert256
" colorscheme wombat256mod
" colorscheme twilight256
" colorscheme Tomorrow-Night-Bright
colorscheme Tomorrow-Night
" colorscheme delek
" colorscheme base16-tomorrow
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
" Can just rely on vim digraphs for this.
" source ~/.vim/additionalMappings.vim
" "

" Test extending matchit for ruby "
" source ~/.vim/ruby-matchit-2.vim
" "

" Test minimap "
" source ~/.vim/1470884/.vimrc
" "

" Extra digraphs "
" ⊕ XOR
digraphs XO 8853
" "

" Show highlighting groups for current word "
source ~/.vim/syntaxHighlightInspect.vim
" "

" neocomplete "
let g:neocomplete#enable_at_startup = 1
nnoremap <Leader>tn :NeoCompleteToggle<CR>
" "

" syntastic options "
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['ruby', 'php', 'clojure', 'erlang'],
                           \ 'passive_filetypes': ['puppet', 'go'] }


" Some stuff from cupakromer's vimrc "
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vender/gems/*
set wildignorecase

" set list listchars=tab:¬·,trail:·
set list listchars=tab:¬·,trail:·,extends:→,precedes:←,conceal:✗,nbsp:┄
" set list listchars=tab:¬·,trail:·,extends:…,precedes:…,conceal:×,nbsp:┄
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

" EasyMotion "
let g:EasyMotion_leader_key = '\'
" "

let mapleader = ' '
" Window navigation shortcuts "
nnoremap <Leader>- s
nnoremap <Leader>| v
" nnoremap <Leader>- -
" nnoremap <Leader>= +
nnoremap <Leader>_ _
" nnoremap <Leader>| |
nnoremap <Leader>+ =
nnoremap <Leader>j j
nnoremap <Leader>k k
nnoremap <Leader>l l
nnoremap <Leader>h h
" nnoremap <Leader>w w
nnoremap <Leader>c c
nnoremap <Leader>o o
nnoremap <Leader>> >
nnoremap <Leader>< <
" "

" Conflicts with <Leader>l above
let g:swoopUseDefaultKeyMap = 0

nnoremap <Leader>ml :call SwoopMulti()<CR>
" nnoremap <Leader>ml :call SwoopMultiSelection()<CR>

" Tab navigation shortcuts "
" nnoremap <Leader>t gt
" nnoremap <Leader>T gT
" "

" Toggle paste mode "
nnoremap <Leader>P :set paste!
" "

" Quick-toggle fold "
" Might not keep this one... "
nnoremap <Leader><Enter> za
" "

" Save-so-Much! "
nnoremap <Leader><Leader> :w<CR>
" "

" Buffer navigation shortcuts "
nnoremap <Leader>n  :bn<CR>
nnoremap <Leader>p  :bp<CR>
nnoremap <Leader>be :BufExplorer<CR>
nnoremap <Leader>bo :BufOnly<CR>
" Get rid of the current buffer without closing the window "
" (Dersn't work s'well) "
nnoremap <Leader>bd sj:bdj
" "

" NERDTree mapping "
nnoremap <Leader>N :NERDTreeToggle<CR>
" "

" Taglist mapping "
nnoremap <Leader>tl :TlistToggle<CR>
let Tlist_Use_Right_Window=1
" "

" The first 2 of these are only useful when :set wrap is on. "
" pretty lousy when navigating code. Might want to put them  "
" in an ftplugin for txt or something.                       "
nnoremap k gk
nnoremap j gj
nnoremap <C-K>  <C-Y>
nnoremap <C-J>  <C-E>
nnoremap <C-H>  zh
nnoremap <C-L>  zl
nnoremap <UP>   <C-Y>k
nnoremap <DOWN> <C-E>j

" nnoremap <S-F5> :w<CR>:!texexec --xetex --purgeall "%"<CR>
" nnoremap <S-F6> :w<CR>:!texexec --pdf --purgeall "%"<CR>
" nnoremap <S-F7> :w<CR>:!texexec --lua "%"<CR>

" nnoremap <S-F12> :update<CR>:!python "%"<CR>

" CTAGS setup/mapping (for all programming languages... not just C)  "
" only needs to be run once per file if AutoTags plugin is installed "
" nnoremap <Leader>8 :let g:ctags_path='/usr/bin/ctags'<CR>
" nnoremap <Leader>9 :let g:ctags_args='-I __declspec+'<CR>
" nnoremap <Leader>0 :CTAGS<CR>
" "

" Execution of interpreted languages (with proper hash-bang markup) "
" nnoremap <Leader>E :w<CR>:!chmod 744 %<CR>
" nnoremap <Leader>e :w<CR>:!./%<CR>

" Recommended in help files for auto-complete "
" This first one screws up the escape key
" inoremap  
inoremap  
" inoremap  
inoremap  
" "

" vim-ruby-xmpfilter marks "
" Need to change to a better mapping and move to ruby.vim "
" imap <buffer> <C-M> <Plug>(xmpfilter-mark)
" imap <buffer> <C-O> <Plug>(xmpfilter-run)
" xmap <buffer> <C-M> <Plug>(xmpfilter-mark)
" xmap <buffer> <C-O> <Plug>(xmpfilter-run)
" nmap <buffer> <C-M> <Plug>(xmpfilter-mark)
" nmap <buffer> <C-O> <Plug>(xmpfilter-run)
" "

" start with regular line numbering and provide means "
" of toggling between relative and absolute from "
" TODO improve...currently is initially disabled
" jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/ "
" set number

" function! NumberToggle()
"     if(&relativenumber == 1)
"         set number
"     else
"         set relativenumber
"     endif
" endfunc

" au FocusLost * :set number<CR>
" au FocusGained * :set relativenumber<CR>
" nnoremap <Leader>a :call NumberToggle()<CR>
nnoremap <Leader>a :set relativenumber!<CR>
" "
set relativenumber

set lazyredraw

" Skinny indent guides "
" Plugin 'nathanaelkane/vim-indent-guides' "
let g:indent_guides_guide_size=1
" "

" Set linebreaks when wrap is turned on "
set linebreak
set list
set nowrap
" Toggle wrap "
nnoremap <Leader>A :set wrap!<CR>:set list!<CR>
" "

" Mac Copy "
vnoremap <Leader>y :w !pbcopy<CR>
nnoremap <Leader>yy vip:w !pbcopy<CR>

" Fugitive "
nnoremap <Leader>gg :Gstatus<CR>
nnoremap <Leader>gh :Gbrowse<CR>
nnoremap <Leader>gH :Gbrowse!<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gl :Glog<CR>
vnoremap <Leader>gh :Gbrowse<CR>
vnoremap <Leader>gH :Gbrowse!<CR>
vnoremap <Leader>gb :Gblame<CR>
vnoremap <Leader>gl :Glog<CR>
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" Keep vim status line on by default "
set laststatus=2
" "

" rsi "
let g:rsi_no_meta = 1
" "

" quickfix navigation "
nnoremap <Leader>fn :cn<CR>
nnoremap <Leader>fp :cp<CR>
" "

" fast change vimrc "
nnoremap <Leader>vl :source ~/.vimrc<CR>
" edit vimrc "
nnoremap <Leader>ve :e ~/.vimrc<CR>
" close vimrc and return to file "

" TODO

" vim plugin
" --save vimrc
" --source vimrc
" --install new plugin
" --source vimrc
nnoremap <Leader>vp :w<CR>
" "

" From http://robots.thoughtbot.com/faster-grepping-in-vim
if executable('ag')
    " Use ag over grep
    " set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects
    " .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif
" "

" sonic pi "
if exists("g:sonicpi_enabled") && g:sonicpi_enabled == 1
    " vunmap <Leader>r
    vnoremap <Leader>r :<Home>silent<End>w !sonic_pi<CR>
    " nunmap <Leader>se
    nnoremap <Leader>se vip:<Home>silent<End>w !sonic_pi<CR>
endif
" "

" FuzzyFinder "
" since replaced by ctrlp "
" nnoremap <Leader>ff :FufFile<CR>
" nnoremap <Leader>fb :FufBuffer<CR>
" nnoremap <Leader>fm :FufMruFile<CR>
" "

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

" Show syntax highlighting groups for word under cursor "
" (from VimCasts)
nmap <Leader>sg :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
" "


" For vim-commentary "
autocmd FileType ruby set commentstring=#\ %s
" autocmd FileType vim  set commentstring=\"\ %s\ \" "
" "

" Ultisnips "
" warning...be careful of interactions with other plugins "
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" Ultisnips split window "
" let g:UltiSnipsEditSplit="vertical"

" For vim-flavored-markdown plugin "
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

""
" For prose formatting with par...helpful for re-flowing comments and markdown
" text.
"
" Note: In order for this to work, you'll need to both
"   1) install `par`
"   2) export PARINIT as 'rTbgqR B=.,?_A_a Q=_s>|' from your shell's
"   profile/init file.
vnoremap <Leader>= !par
nnoremap <Leader>== V!par
" TODO: Set up the above command to accept a motion.

" DB Ext

" let g:dbext_default_PGSQL_pgpass = expand('$HOME/.pgpass')
" let g:dbext_default_display_cmd_line = 1
let g:dbext_default_window_use_horiz = 0
let g:dbext_default_window_width = 160
" Profiles
" PostgreSQL
let g:dbext_default_profile_PGSQL_dev           = 'type=pgsql:dbname=distil_development:host=localhost:user=scott:passwd='
let g:dbext_default_profile_PGSQL_dev_reporting = 'type=pgsql:dbname=distil_reporting:host=localhost:user=scott:passwd='
let g:dbext_default_profile_PGSQL_dev_summary   = 'type=pgsql:dbname=distil_summary:host=localhost:user=scott:passwd='

if !exists("g:dbext_default_profile")
    let g:dbext_default_profile                 = 'PGSQL_dev'
endif

nnoremap <unique> <Leader>see <Plug>DBExecSQLUnderCursor
nnoremap <unique> <Leader>spp <Plug>DBPromptForBufferParameters

""
" TODO—tweak these settings so that only variables matching `:var_name`
" are recognized...by default dbext prompts for variable interpolation
" when query contains typecasting such as
"   SELECT 3::text;
"
" Some of the following settings totally remove recognition of
" colon-prefixed variables, but that's not ideal, since it's a nice
" syntax to use.
"
" autocmd BufRead */MyProjectDir/* DBSetOption variable_def_regex=\(\w\|'\)\@<!?\(\w\|'\)\@<!,\zs\(@\|:\a\|\$\)\w\+\>\|#{\(\w\|\[.\-\]\)\+}
" autocmd BufRead *.{pl,}sql DBSetOption variable_def_regex=\v(\w|')@<!\?(\w|')@<!,\v\zs\@\w+>,\v(:)@1<!:\w+>
autocmd BufRead *.{pl,}sql DBSetOption variable_def=?WQ,@wq,$wq
autocmd BufRead *.{pl,}sql DBSetOption variable_def_regex=\v(\w|')@<!\?(\w|')@<!,\v\zs\@\w+>
autocmd BufRead *.{ba,}sh DBSetOption variable_def_regex=\v(\w|')@<!\?(\w|')@<!,\v\zs\@\w+>,\v(:)@1<!:\w+>,\v\$\{\w+\}
autocmd BufRead *.{rake,rb} DBSetOption variable_def_regex=\v(\w|')@<!\?(\w|')@<!,\v\zs\@\w+>,\v#\{(\w|[.\-])+},\v(:)@1<!:\w+>
" autocmd BufRead *.{ba,}sh DBSetOption variable_def_regex=
" autocmd BufRead DBSetOption variable_def_regex=,#{\ \?\(\w\|\[.\-\]\)\+\ \?}
" DBSetOption variable_def_regex=,#{\ \?\(\w\|\[.\-\]\)\+\ \?}


" unblevable/quick-scope "
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Trigger a highlight only when pressing f and F.
" let g:qs_highlight_on_keys = ['f', 'F']

"   custom colors
" let g:qs_first_occurrence_highlight_color = '#afff5f' " gui vim
" let g:qs_first_occurrence_highlight_color = 155       " terminal vim

" let g:qs_second_occurrence_highlight_color = '#5fffff'  " gui vim
" let g:qs_second_occurrence_highlight_color = 81         " terminal vim


" It no work! :(
" AddTabularPattern comma_words /\v[^ ,)]+,/l1
