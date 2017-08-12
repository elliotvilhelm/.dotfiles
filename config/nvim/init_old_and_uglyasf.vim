


call plug#begin('~/.dotfiles/config/nvim/plugged')

" colorschemes
Plug 'morhetz/gruvbox'
Plug 'sbdchd/neoformat'

Plug 'artur-shaik/vim-javacomplete2'
" utilities
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-surround'
Plug 'benmills/vimux'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'benekastah/neomake' " python
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'garbas/vim-snipmate'
Plug 'editorconfig/editorconfig-vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'sotte/presenting.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-abolish'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'tpope/vim-sleuth' " detect indent style (tabs vs. spaces)
Plug 'sickill/vim-pasta' " context-aware pasting
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } " distraction-free writing
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' } " focus tool. Good for presentating with vim

Plug 'mattn/emmet-vim'
Plug 'gregsexton/MatchTag', { 'for': 'html' }
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'jsx' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'Quramy/tsuquyomi', { 'for': 'typescript', 'do': 'npm install' }
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'juvenn/mustache.vim', { 'for': 'mustache' }
Plug 'mustache/vim-mustache-handlebars'
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'ap/vim-css-color', { 'for': ['css','stylus','scss'] }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'itspriddle/vim-marked', { 'for': 'markdown', 'on': 'MarkedOpen' }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'tclem/vim-arduino'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
"Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'flazz/vim-colorschemes'
Plug 'hdima/python-syntax'

call plug#end()

let g:syntastic_python_pylint_rcfile='/Reaper/.pylintrc'
let python_highlight_all = 1

let g:python_host_prog  = '/usr/local/Cellar/python/2.7.13/bin/python'
let g:python3_host_prog  = '/usr/local/Cellar/python3/3.5.2_3/bin/python3'


set nocompatible " not compatible with vi
set autoread " detect when a file is changed

" make backspace behave in a sane manner
set backspace=indent,eol,start

" set a map leader for more key combos
let mapleader = ','
let g:mapleader = ','

set history=1000 " change history to 1000
set textwidth=120

" Tab control
set noexpandtab " insert tabs rather than spaces for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

if has('mouse')
    set mouse=a
    " set ttymouse=xterm2
endif

set clipboard=unnamed

" faster redrawing
set ttyfast

" remap esc
inoremap jk <esc>

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" remove some files by extension
let NERDTreeIgnore = ['\.js.map$']
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>

" Commentary 
nmap <silent> <leader>c :Commentary<cr>

" map fuzzyfinder (CtrlP) plugin
" nmap <silent> <leader>t :CtrlP<cr>
nmap <silent> <leader>r :CtrlPBuffer<cr>
let g:ctrlp_map='<leader>t'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'

" toggle Limelight
nmap <leader>f :Limelight!!<cr>

let g:neomake_javascript_jshint_maker = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
\ }
autocmd FileType javascript let g:neomake_javascript_enabled_makers = findfile('.jshintrc', '.;') != '' ? ['jshint', 'jscs'] : ['eslint']

" CtrlP ignore patterns
" let g:ctrlp_custom_ignore = {
"             \ 'dir': '\.git$\|node_modules$\|bower_components$\|\.hg$\|\.svn$',
"             \ 'file': '\.exe$\|\.so$'
"             \ }
" only show files that are not ignored by git
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" search the nearest ancestor that contains .git, .hg, .svn
let g:ctrlp_working_path_mode = 2


" airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
" let g:airline_theme='gruvbox'
"let g:airline_theme='base16'

" don't hide quotes in json files
let g:vim_json_syntax_conceal = 0


let g:SuperTabCrMapping = 0


filetype plugin on 
syntax on
set encoding=utf8
"set background=dark
"set background=light
"colorscheme wombat256mod
colorscheme Chasing_Logic
set number " show the current line number"
set wrap "turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak=… " show ellipsis at breaking
set autoindent " automatically set indent of new line
set smartindent
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set laststatus=2 " show the satus line all the time




"
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"



autocmd FileType java setlocal omnifunc=javacomplete#Complete

nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)

nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)






set runtimepath+=~/.dotfiles/config/nvim/plugged/deoplete.nvim/
set runtimepath+=~/.dotfiles/config/nvim/plugged/deoplete-jedi/

" deoplete.vim
" credit: https://gist.github.com/zchee/c314e63ae8b6bea50bb4
let g:deoplete#enable_at_startup = 1
set completeopt+=noinsert
set completeopt-=preview
let g:deoplete#enable_ignore_case = 1
let g:deoplete#auto_completion_start_length = 0
" https://github.com/Shougo/deoplete.nvim/issues/117

let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = ['buffer', 'vim', 'member']
let g:deoplete#sources#go = 'vim-go'

" deoplete tab-complete
"inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" tern
"autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>



"let g:deoplete#disable_auto_complete = 1

"let g:deoplete#ignore_sources = {}
"let g:deoplete#ignore_sources._ = ['javacomplete2']


"inoremap <expr><C-n> deoplete#mappings#manual_complete()




autocmd filetype indent on






" Compile and Run
autocmd filetype cpp nnoremap <F8> :w<CR>:!g++ -std=c++11 % -o%< && ./%<<CR>
autocmd filetype c   nnoremap <F8> :w<CR>:!gcc % -o%< && ./%<<CR>
autocmd filetype python nnoremap <F8> :w <bar> exec '!python '.shellescape('%')<CR>
