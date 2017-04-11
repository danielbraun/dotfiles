" Required by Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chiel92/vim-autoformat'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'groenewege/vim-less'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'jnurmine/Zenburn'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-surround'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-slamhound'
"Plugin 'guns/vim-clojure-highlight'
"Plugin 'Dinduks/vim-holylight'
"Plugin 'mhinz/vim-signify'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'venantius/vim-cljfmt'
Plugin 'tpope/vim-vinegar'

Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'tpope/vim-repeat'

Plugin 'hsanson/vim-android'

Plugin 'tpope/vim-fugitive'

Plugin 'venantius/vim-eastwood'
"Plugin 'tpope/vim-dispatch'
"Plugin 'tpope/vim-projectionist'
"Plugin 'tpope/vim-salve'

call vundle#end()

filetype plugin indent on
syntax enable
set ts=8 et sw=4 sts=4
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
let g:rehash256 = 1 " molokai options

set bg=dark
colo zenburn
set t_ut= "Fixed bg redrawing with xterm-256color
set noswapfile
set colorcolumn=80
set ignorecase
set cursorline
let g:clj_fmt_autosave = 0
let g:syntastic_check_on_open = 0
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list = 1
let g:syntastic_python_checkers = ['python', 'pep8', 'flake8', 'pyflakes']
"let g:syntastic_clojure_checkers = ['eastwood']
let g:syntastic_objc_check_header = 1
au BufNewFile,BufRead *.h set filetype=objc
au BufNewFile,BufRead *.m set filetype=objc
au BufNewFile,BufRead Podfile set filetype=ruby
au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
au BufNewFile,BufRead *.boot set filetype=clojure
au BufNewFile,BufRead *.clj* nnoremap <CR> :Ev<CR>
autocmd BufWritePost ~/.vimrc so %
autocmd BufWritePost *_test.clj silent RunTests
nnoremap Q <nop>
