" --------------------------
"  vimrc
"  @auther Kohga
" --------------------------

" -------------
"  Basic
" -------------
if &compatible
	set nocompatible
endif

nnoremap ; :
filetype plugin indent on
syntax enable
set t_Co=256
set hlsearch
set number
set imdisable
set antialias
set nobackup
set visualbell t_vb=
set wrapscan
set showmatch
set grepprg=internal
set clipboard=unnamed
set virtualedit=block
set ignorecase
set smartcase
set incsearch
set ambiwidth=double
set laststatus=2
set backspace=eol,indent,start
set wildmenu
set wildmode=list:full
set wildignore=*.o,*.obj,*.pyc,*.so,*.dll
set encoding=utf-8
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
let g:python_highlight_all = 1

" Remove the space at the time of storage
autocmd BufWritePre * :%s/s+$//e

set undodir=D:~.vim_undo/

" -------------
"  Indent
" -------------
"set autoindent
"set smartindent
set cindent
"set indentexpr
set tabstop=4
set shiftwidth=4

" tab -> space
"set expandtab

" -------------
"  Move
" -------------
inoremap <C-d> <END>
inoremap <C-a> <HOME>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <ESC> <ESC>:set iminsert=0<CR>
set whichwrap=b,s,<,>,[,]

" -------------
"  Command
" -------------
nnoremap <silent><C-n> :tabnew<CR>
noremap <c-s> :sp<cr><c-w><c-w>:VimShell<cr>
inoremap <silent> <Esc> <Esc>
inoremap <silent> <C-[> <Esc>
inoremap <silent> <C-j> <C-^>
nmap <Tab> gt
nmap <S-Tab> gT

" -------------
"  taglits and tab
" -------------
set tags=tags
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Auto_Open = 1

" auto color
hi Pmenu guibg=#f5f5dc guifg=#000000
hi PmenuSel guibg=#0000ff guifg=#ffffff
hi PmenuSbar guibg=#aaaaaa
hi PmenuThumb guifg=#0000ff

" tab
set list
set listchars=tab:>-,trail:-,extends:<,precedes:<
set showtabline=2
set guioptions-=T

" -------------
"  For Tex
" -------------
"autocmd Filetype * set formatoptions+=m
"set textwidth =78
"autocmd Filetype text set formatoptions+=m
"autocmd Filetype text set textwidth =78

" --------------------------
" NeoBundle
" --------------------------

" neobundle settings {{{
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
	set nocompatible
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" colorscheme
"NeoBundle 'tomasr/molokai'
"NeoBundle 'sjl/badwolf'
"NeoBundle 'nanotech/jellybeans.vim'
"NeoBundle 'jeffreyiacono/vim-colors-wombat'
"NeoBundle 'vim-scripts/Wombat'
"NeoBundle 'gosukiwi/vim-atom-dark.git'
"NeoBundle 'croaker/mustang-vim'
"NeoBundle 'altercation/vim-colors-solarized'
"NeoBundle 'vim-scripts/twilight'
"NeoBundle 'jonathanfilip/vim-lucius'
"NeoBundle 'jpo/vim-railscasts-theme'
"NeoBundle 'vim-scripts/rdark'
"NeoBundle 'jacoborus/tender'
"NeoBundle 'Haron-Prime/Antares'
"NeoBundle 'vim-scripts/Zenburn'
"NeoBundle 'mrkn/mrkn256.vim'
"NeoBundle 'jpo/vim-railscasts-theme'
"NeoBundle 'jdkanani/vim-material-theme'
"NeoBundle 'raphamorim/lucario'
NeoBundle 'vim-scripts/Lucius'

" basic
if has('lua')
	NeoBundleLazy 'Shougo/neocomplete.vim', {
				\ 'depends' : 'Shougo/vimproc',
				\ 'autoload' : { 'insert' : 1,}
				\ }
endif
NeoBundleLazy 'Shougo/vimshell', {
			\ 'depends' : 'Shougo/vimproc',
			\ 'autoload' : {
			\   'commands' : [{ 'name' : 'VimShell', 'complete' : 'customlist,vimshell#complete'},
			\                 'VimShellExecute', 'VimShellInteractive',
			\                 'VimShellTerminal', 'VimShellPop'],
			\   'mappings' : ['<Plug>(vimshell_switch)'],
			\ }}
NeoBundleLazy 'Shougo/vimfiler', {
			\ 'depends' : ["Shougo/unite.vim"],
			\ 'autoload' : {
			\   'commands' : [ "VimFilerTab", "VimFiler", "VimFilerExplorer", "VimFilerBufferDir" ],
			\   'mappings' : ['<Plug>(vimfiler_switch)'],
			\   'explorer' : 1,
			\ }}
NeoBundle 'Shougo/neomru.vim', {
			\ 'depends' : 'Shougo/unite.vim'
			\ }
NeoBundle 'Shougo/vimproc', {
			\ 'build' : {
			\     'windows' : 'make -f make_mingw32.mak',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make -f make_mac.mak',
			\     'unix' : 'make -f make_unix.mak',
			\    },
			\ }
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'kana/vim-smartinput'
NeoBundle 'kana/vim-operator-user'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-operator-replace'
NeoBundle 'rhysd/vim-operator-surround'
NeoBundle 'ervandew/supertab'
"NeoBundle 'scrooloose/syntastic'   "Idiot!!!
NeoBundle 'therubymug/vim-pyte'
NeoBundle 'LeafCage/yankround.vim'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'glidenote/memolist.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'scrooloose/nerdtree'
NeoBundleLazy 'tpope/vim-endwise', {
			\ 'autoload' : { 'insert' : 1,}}
NeoBundleLazy 'junegunn/vim-easy-align', {
			\ 'autoload': {
			\   'commands' : ['EasyAlign'],
			\   'mappings' : ['<Plug>(EasyAlign)'],
			\ }}
NeoBundleLazy 'thinca/vim-quickrun', {
			\ 'autoload' : {
			\   'mappings' : [['n', '\r']],
			\   'commands' : ['QuickRun']
			\ }}
NeoBundleLazy 'mattn/emmet-vim', {
			\ 'autoload' : {
			\   'filetypes' : ['html', 'html5', 'eruby', 'jsp', 'xml', 'css', 'scss', 'coffee'],
			\   'commands' : ['<Plug>ZenCodingExpandNormal']
			\ }}

" for Clang
NeoBundle 'Shougo/vimproc.vim', {
			\ 'build' : {
			\ 'windows' : 'make -f make_mingw32.mak',
			\ 'cygwin' : 'make -f make_cygwin.mak',
			\ 'mac' : 'make -f make_mac.mak',
			\ 'unix' : 'make -f make_unix.mak',
			\ },
			\ }
NeoBundle 'justmao945/vim-clang'
NeoBundle 'Shougo/neoinclude.vim'

" for python
"NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'jmcantrell/vim-virtualenv'
"NeoBundleLazy 'nvie/vim-flake8', {
"			\ 'autoload': {
"			\   'filetypes': ["python", 'python3', 'djangohtml']
"			\ }}
"NeoBundleLazy 'hachibeeDI/python_hl_lvar.vim', {
"			\   'autoload' : {
"			\     'filetypes' : ['python'],
"			\   },
"			\ }
NeoBundle 'kana/vim-textobj-indent'
NeoBundle 'bps/vim-textobj-python'

" for markdown
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'

" for Tex
NeoBundle 'vim-latex/vim-latex'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
" }}}

" --------------------------
"  NeoBundle (Setting of each plug-in)
" --------------------------

" -------------
"  colorscheme
" -------------
"colorscheme molokai
"colorscheme badwolf
"colorscheme jellybeans
"colorscheme wombat
"colorscheme atom-dark-256
"colorscheme mustang
"colorscheme solarized
"colorscheme twilight
colorscheme lucius
"colorscheme railscasts
"colorscheme rdark
"colorscheme tender
"colorscheme antares
"colorscheme material-theme
"colorscheme lucario

set background=dark
"highlight Normal ctermbg=none
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/
au BufNewFile,BufRead * set iminsert=0

" unite {{{
let g:unite_enable_start_insert=1
nmap <silent> <C-u><C-b> :<C-u>Unite buffer<CR>
nmap <silent> <C-u><C-f> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nmap <silent> <C-u><C-r> :<C-u>Unite -buffer-name=register register<CR>
nmap <silent> <C-u><C-m> :<C-u>Unite file_mru<CR>
nmap <silent> <C-u><C-u> :<C-u>Unite buffer file_mru<CR>
nmap <silent> <C-u><C-a> :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
au FileType unite nmap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite imap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite nmap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite imap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite nmap <silent> <buffer> <ESC><ESC> q
au FileType unite imap <silent> <buffer> <ESC><ESC> <ESC>q
" }}}

" neocomplete {{{
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
" }}}

" vimshell {{{
nmap <silent> vs :<C-u>VimShell<CR>
nmap <silent> vp :<C-u>VimShellPop<CR>
" }}}

" yankround.vim {{{
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
"nmap <C-p> <Plug>(yankround-prev)
"nmap <C-n> <Plug>(yankround-next)
let g:yankround_max_history = 100
nnoremap <Leader><C-p> :<C-u>Unite yankround<CR>
"}}}

" vimfiler {{{
let g:vimfiler_as_default_explorer  = 1
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_data_directory       = expand('~/.vim/etc/vimfiler')
nnoremap <silent><C-u><C-j> :<C-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit -toggle<CR>
" }}}

" memolist {{{
let g:memolist_path = expand('~/Documents/memolist')
let g:memolist_gfixgrep = 1
let g:memolist_unite = 1
let g:memolist_unite_option = "-vertical -start-insert"
nnoremap mn  :MemoNew<CR>
nnoremap ml  :MemoList<CR>
nnoremap mg  :MemoGrep<CR>
" }}}

" vim-easymotion {{{
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-s2)
xmap s <Plug>(easymotion-s2)
omap z <Plug>(easymotion-s2)
nmap g/ <Plug>(easymotion-sn)
xmap g/ <Plug>(easymotion-sn)
omap g/ <Plug>(easymotion-tn)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
let g:EasyMotion_startofline = 0
let g:EasyMotion_keys = 'QZASDFGHJKL;'
let g:EasyMotion_use_upper = 1
let g:EasyMotion_enter_jump_first = 1
" }}}

" vim-easy-align {{{
vmap <Enter> <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)
" }}}

" vim-markdown {{{
let g:vim_markdown_folding_disabled = 1
" }}}

" vim-NERDTree {{{
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" }}}

" quickrun {{{
let g:quickrun_config = {}
let g:quickrun_config._ = { 'runner' : 'vimproc',
			\ 'runner/vimproc/updatetime' : 200,
			\ 'outputter/buffer/split' : ':botright 8sp',
			\ 'outputter' : 'multi:buffer:quickfix',
			\ 'hook/close_buffer/enable_empty_data' : 1,
			\ 'hook/close_buffer/enable_failure' : 1,
			\ }
nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"
" }}}

" emmet {{{
let g:use_emmet_complete_tag = 1
let g:user_emmet_settings = {
			\ 'lang' : 'ja',
			\ 'html' : {
			\   'indentation' : '  '
			\ }}
" }}}

" -------------
"  C lang
" -------------
" 'justmao945/vim-clang' {{{
" disable auto completion for vim-clanG
let g:clang_auto = 0
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
let g:clang_use_library = 1

" default 'longest' can not work with neocomplete
let g:clang_c_completeopt   = 'menuone'
let g:clang_cpp_completeopt = 'menuone'

if executable('clang-3.6')
	let g:clang_exec = 'clang-3.6'
elseif executable('clang-3.5')
	let g:clang_exec = 'clang-3.5'
elseif executable('clang-3.4')
	let g:clang_exec = 'clang-3.4'
else
	let g:clang_exec = 'clang'
endif

if executable('clang-format-3.6')
	let g:clang_format_exec = 'clang-format-3.6'
elseif executable('clang-format-3.5')
	let g:clang_format_exec = 'clang-format-3.5'
elseif executable('clang-format-3.4')
	let g:clang_format_exec = 'clang-format-3.4'
else
	let g:clang_exec = 'clang-format'
endif

let g:clang_c_options = '-std=c11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
" }}}

" -------------
"  Python
" -------------
"let g:syntastic_python_checkers = ["flake8"]

" .vim/after/ftplugin/python.vim "
"if exists('b:did_ftplugin_python')
"    finish
"endif
"let b:did_ftplugin_python = 1

" - af: a function
" - if: inner function
" - ac: a class
" - ic: inner class
" this plugin has aditional key-bind
"  -  '[pf', ']pf': move to next/previous function
"  -  '[pc', ']pc': move to next/previous class
"xmap <buffer> af <Plug>(textobj-python-function-a)
"omap <buffer> af <Plug>(textobj-python-function-a)
"xmap <buffer> if <Plug>(textobj-python-function-i)
"omap <buffer> if <Plug>(textobj-python-function-i)
"xmap <buffer> ac <Plug>(textobj-python-class-a)
"omap <buffer> ac <Plug>(textobj-python-class-a)
"xmap <buffer> ic <Plug>(textobj-python-class-i)
"omap <buffer> ic <Plug>(textobj-python-class-i)
"setlocal omnifunc=jedi#completions

"let g:SuperTabContextDefaultCompletionType = "context"
"let g:SuperTabDefaultCompletionType = "<c-n>"

"autocmd BufWinEnter  *.py PyHlLVar
"autocmd BufWinLeave  *.py PyHlLVar
"autocmd WinEnter     *.py PyHlLVar
"autocmd BufWritePost *.py PyHlLVar
"autocmd WinLeave     *.py PyHlLVar
"autocmd TabEnter     *.py PyHlLVar
"autocmd TabLeave     *.py PyHlLVar

" -------------
"  MorkDown
" -------------
au BufRead,BufNewFile *.md set filetype=markdown
"let g:previm_open_cmd = 'open -a Firefox'
let g:previm_open_cmd = 'open -a Safari'
nnoremap pv  :PrevimOpen<CR>

" -------------
"  Vim-LaTeX
" -------------
filetype plugin on
filetype indent on
set shellslash
set grepprg=grep\ -nH\ $*
let g:Tex_AutoFolding = 0 "折りたたみ無効
let g:tex_flavor='latex'
let g:Imap_UsePlaceHolders = 1
let g:Imap_DeleteEmptyPlaceHolders = 1
let g:Imap_StickyPlaceHolders = 0
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf'
"let g:Tex_FormatDependency_pdf = 'pdf'
let g:Tex_FormatDependency_pdf = 'dvi,pdf'
"let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
let g:Tex_FormatDependency_ps = 'dvi,ps'
"let g:Tex_CompileRule_pdf = 'ptex2pdf -u -l -ot -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
"let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
"let g:Tex_CompileRule_pdf = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
"let g:Tex_CompileRule_pdf = 'luajitlatex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
"let g:Tex_CompileRule_pdf = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
"let g:Tex_CompileRule_pdf = 'ps2pdf $*.ps'
let g:Tex_CompileRule_pdf = 'dvipdfmx $*.dvi'
let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
"let g:Tex_CompileRule_dvi = 'uplatex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
"let g:Tex_CompileRule_dvi = 'platex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
let g:Tex_CompileRule_dvi = 'platex $*.tex'
let g:Tex_BibtexFlavor = 'upbibtex'
let g:Tex_MakeIndexFlavor = 'upmendex $*.idx'
let g:Tex_UseEditorSettingInDVIViewer = 1
"let g:Tex_ViewRule_pdf = 'xdg-open'
let g:Tex_ViewRule_pdf = 'evince'
"let g:Tex_ViewRule_pdf = 'okular --unique'
"let g:Tex_ViewRule_pdf = 'zathura -s -x vim --servername synctex -n --remote-silent +\%{line} \%{input}'
"let g:Tex_ViewRule_pdf = 'qpdfview --unique'
"let g:Tex_ViewRule_pdf = 'texworks'
"let g:Tex_ViewRule_pdf = 'mupdf'
"let g:Tex_ViewRule_pdf = 'firefox -new-window'
"let g:Tex_ViewRule_pdf = 'chromium --new-window'
"let g:Tex_ViewRule_pdf = 'pdf'
let g:Tex_IgnoredWarnings =
			\'Underfull'."\n".
			\'Overfull'."\n".
			\'specifier changed to'."\n".
			\'You have requested'."\n".
			\'Missing number, treated as zero.'."\n".
			\'There were undefined references'."\n".
			\'Citation %.%# undefined'."\n".
			\"Font shape \`JT1/gt/m/it\' undefined"."\n".
			\"Font shape \`JY1/gt/m/it\' undefined"."\n".
			\"Font shape \`JT1/mc/m/it\' undefined"."\n".
			\"Font shape \`JY1/mc/m/it\' undefined"."\n".
			\'LaTeX Font Warning: Some font shapes were not available, defaults substituted.'."\n".
			\"Unused global option(s)"."\n".
			\"Font shape `OT1/cmr/m/n' in size <16> not available"."\n".
			\"Font shape `OT1/cmr/bx/n' in size <16> not available"."\n".
			\"Size substitutions with differences"
let g:Tex_IgnoreLevel = 16

" sorry, Uganda
set shortmess+=I
