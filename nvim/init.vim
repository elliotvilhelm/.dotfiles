call plug#begin('~/.config/nvim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'arakashic/chromatica.nvim'
Plug 'tpope/vim-rails'
Plug 'majutsushi/tagbar'
" colorschemes
Plug 'morhetz/gruvbox'
Plug 'sbdchd/neoformat'
Plug 'flazz/vim-colorschemes'
" auto completion
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe'
Plug 'mitsuse/autocomplete-swift'
" linting
Plug 'w0rp/ale'
"Plug 'scrooloose/syntastic'
" utilities
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-ragtag' "set of mappings for HTML, XML, PHP.
Plug 'tpope/vim-surround' "add quotes brackets etc..
Plug 'tpope/vim-sleuth' " automatically adjusts shiftwifth and expandtab, shoudl be able to remove all indent config from this file
Plug 'bling/vim-airline' "sleek bottom bar
Plug 'vim-airline/vim-airline-themes'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'sickill/vim-pasta' " context-aware pasting
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } " distraction-free writing Goyo [dimension] & Goyo!
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' } " focus tool. Good for presentating with vim
Plug 'mxw/vim-jsx', { 'for': 'jsx' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'Quramy/tsuquyomi', { 'for': 'typescript', 'do': 'npm install' }
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'juvenn/mustache.vim', { 'for': 'mustache' }
Plug 'mustache/vim-mustache-handlebars'
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'ap/vim-css-color', { 'for': ['css','stylus','scss'] }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'itspriddle/vim-marked', { 'for': 'markdown', 'on': 'MarkedOpen' }
Plug 'vim-scripts/Nibble'
Plug 'vim-scripts/genutils'
Plug 'vim-scripts/TeTrIs.vim'
Plug 'vim-scripts/ScrollColors'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

" remap esc
inoremap jk <esc>
:imap jj <Esc>

" PYTHON CONFIG
let g:syntastic_python_pylint_rcfile='/Reaper/.pylintrc'
let python_highlight_all = 1
"let g:python_host_prog  = '/usr/local/Cellar/python/2.7.14/bin/python'
let g:python3_host_prog  = '/usr/local/Cellar/python/3.6.5_1/bin/python3'

" for colorscheme to appear correct color
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set nocompatible " not compatible with vi
set autoread " detect when a file is changed

" make backspace behave in a sane manner
set backspace=indent,eol,start

" set a map leader for more key combos
let mapleader = ','
let g:mapleader = ','

set history=1000 " change history to 1000
set textwidth=120


if has('mouse')
    set mouse=a
endif

set clipboard=unnamed

" faster redrawing
set ttyfast


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

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" search the nearest ancestor that contains .git, .hg, .svn
let g:ctrlp_working_path_mode = 2


" airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='gruvbox'
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
"colorscheme seoul256
colorscheme Monokai
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


autocmd filetype indent on


" Compile and Run
autocmd filetype cpp nnoremap <F8> :w<CR>:!g++ -std=c++11 % -o%< && ./%<<CR>
autocmd filetype c   nnoremap <F8> :w<CR>:!gcc % -o%< && ./%<<CR>
autocmd filetype python nnoremap <F8> :w <bar> exec '!python '.shellescape('%')<CR>


autocmd BufNewFile,BufRead *.swift set filetype=swift
" flake8
let g:ale_python_flake8_args="--ignore=E501,E265,E221,W293,E741,E226"


" tag bar
nmap <silent><leader>a :Tagbar<cr>
let g:tlist_ctags_cmd='/usr/local/cellar/ctags/5.8_1/bin/ctags'
let g:airline_theme='wombat'

noremap <Leader>s :update<CR>


let g:ycm_global_ycm_extra_conf = '~/.dotfiles/config/nvim/.ycm_extra_conf.py'



let g:chromatica#enable_at_startup=1
let g:chromatica#libclang_path='/usr/local/opt/llvm/lib'

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

set tags=./tags,tags;$HOME

" Toggle Tagbar
nnoremap <silent> <Leader>b :TagbarToggle<CR>

let g:chromatica#libclang_path = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'

let g:chromatica#enable_at_startup=1

" YouCompleteMe Settings
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
