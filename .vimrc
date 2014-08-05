set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-dispatch.git'
Bundle 'kchmck/vim-coffee-script'
Bundle 'jnwhiteh/vim-golang.git'
Bundle 'kien/ctrlp.vim.git'
Bundle 'ovidiuvisan/gocode.git'
Bundle 'bling/vim-airline'
Bundle 'Lokaltog/vim-powerline.git'
Bundle 'mhinz/vim-tmuxify.git'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'digitaltoad/vim-jade'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/syntastic.git'
Bundle 'jpalardy/vim-slime.git'
Bundle 'vim-scripts/VimClojure.git'
Bundle 'jceb/vim-orgmode.git'
Bundle 'jeetsukumaran/vim-buffergator.git'
Bundle 'vim-scripts/taglist.vim.git'
Bundle 'SirVer/ultisnips.git'
"Bundle 'vim-scripts/slimv.vim.git'
Bundle 'vim-scripts/PDV--phpDocumentor-for-Vim.git'
Bundle 'vim-scripts/DrawIt'
Bundle 'majutsushi/tagbar.git'
Bundle 'Shougo/unite.vim.git'
Bundle 'Shougo/vimproc.vim.git'
Bundle 'mileszs/ack.vim.git'
Bundle 'vim-scripts/Align.git'
Bundle 'myusuf3/numbers.vim.git'
Bundle 'suan/vim-instant-markdown.git'
Bundle 'tpope/vim-rvm.git'
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim.git'
Bundle "ekalinin/Dockerfile.vim"

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdtree'
Bundle 'FindInNERDTree'
Bundle 'YankRing'
Bundle 'nginx'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

call vundle#end()

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

let mapleader = ","
let g:qnamebuf_hotkey = "<leader>,"

" Settings for python mode
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
" let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0



" mapping keyes
map <silent> <leader>f :NERDTreeFind<CR>
map <silent> <leader>l :TlistOpen<CR>
map <silent> <leader>o :only<CR>
map <silent> <leader>t :CommandT<CR>
"map <silent> <leader>, :BuffergatorOpen<CR>
map - <C-W>>
map + <C-W><
map <silent> <F3> :Rgrep<CR>
inoremap <C-D> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-D> :call PhpDocSingle()<CR>
vnoremap <C-D> :call PhpDocRange()<CR>
map <C-T> :po<CR>
nmap <F2> :!pdoc <cword> .<cr>
nnoremap <leader>ci :VCSCommit<CR>
nnoremap <leader>cd :VCSDiff<CR>
nnoremap <leader>cb :VCSBlame<CR>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-Tab> :b#<CR>
nnoremap <space>/ :Unite grep:.<CR>
nnoremap <space>y :Unite history/yanks<CR> 
nnoremap <space>s :Unite -quick-match buffer<CR>
nnoremap <space><space> <C-F><CR>



" php-doc
if has('mac')
    let g:pdv_cfg_Category  = ""
    let g:pdv_cfg_Type = "mixed"
    let g:pdv_cfg_Package = ""
    let g:pdv_cfg_Version = "$id$"
    let g:pdv_cfg_Author = "Ting Wang <tting.wang@gmail.com>"
    let g:pdv_cfg_Copyright = ""
    let g:pdv_cfg_License = ""
    "set gfn=Monaco:h14
else
    let g:pdv_cfg_Category  = ""
    let g:pdv_cfg_Type = "mixed"
    let g:pdv_cfg_Package = ""
    let g:pdv_cfg_Version = "$id$"
    let g:pdv_cfg_Author = "Ting Wang <ting.wang@wine-in-black.de>"
    let g:pdv_cfg_Copyright = "2010-2012 vicampo"
    let g:pdv_cfg_License = "Copyright (c) 2010 Vicampo GmbH (http://www.vicampo.de)"
    "set gfn=Inconsolata\ Medium\ 10
endif
" taglist configuration
let tlist_php_settings = 'php;c:class;f:function'
let g:snips_author = 'Ting Wang'

" sparkup
" let g:sparkup = '~/.janus/sparkup/sparkup'

" set variables
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set relativenumber
set so=7 " Set 7 lines to the curors - when moving vertical
"autocmd FileType javascript,html set shiftwidth=2 | set tabstop=2
set colorcolumn=80
set undofile
set listchars=tab:▸\ ,eol:¬
set foldmethod=marker
if has("gui_running")
    set guioptions=aiA " Disable toolbar, menu bar, scroll bars
    "colorscheme bubblegum
    colorscheme Tomorrow
    "colorscheme mustang
else
    "colorscheme solarized
    if exists("+lines")
        "set lines=50
    endif
    if exists("+columns")
        "set columns=100
    endif
endif
" the splite windows are always equal width
set ea
au FocusLost * :wa



"set background=dark


" Keep search matches in the middle of the window and pulse the line when moving
" to them.
nnoremap n nzzzv
nnoremap N Nzzzv

" Use ,z to "focus" the current fold.
nnoremap <leader>z zMzvzz


" Resize splits when the window is resized
au VimResized * :wincmd =

" for haskell
" use ghc functionality for haskell files
au Bufenter *.hs compiler ghc
" configure browser for haskell_doc.vim
let g:haddock_browser = "/usr/bin/google-chrome"

" ab
iabbrev tempalte template

" slime
let g:slime_target = "tmux"
let g:slime_paste_file = tempname()

" clojure
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1

set guifont=Menlo\ for\ Powerline:h12
" powerline
let g:Powerline_symbols = 'fancy'
hi LineNr guifg=#eeeeee

nmap <leader>t :TagbarOpen<CR>

let g:instant_markdown_slow = 1

" airline
"let g:airline_powerline_fonts = 1
