" Required by Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" Color schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
Plugin 'tomasr/molokai'
Plugin 'joshdick/onedark.vim'

" Formatting
Plugin 'chiel92/vim-autoformat'
Plugin 'bronson/vim-trailing-whitespace'

" CSS
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'groenewege/vim-less'

" Python
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'tpope/vim-vinegar'

" Other
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-repeat'
Plugin 'ervandew/supertab'
Plugin 'wakatime/vim-wakatime'

" Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'

" Syntax checking
Plugin 'scrooloose/syntastic'

" Clojure
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-surround'
Plugin 'guns/vim-clojure-static'
Plugin 'venantius/vim-cljfmt'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'

" Testing
Plugin 'janko-m/vim-test'
call vundle#end()

filetype plugin indent on
syntax enable
set ts=8 et sw=4 sts=4
let g:rehash256 = 1 " molokai options

set bg=dark
colo zenburn
set t_ut= "Fixed bg redrawing with xterm-256color
"set noswapfile
set colorcolumn=80
set ignorecase
set cursorline
set completeopt+=preview "Disable preview when on omnicompletion
let g:syntastic_check_on_open = 0
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list = 1
let g:syntastic_python_checkers = ['python', 'pep8', 'flake8', 'pyflakes']
let g:clj_fmt_autosave = 0
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_objc_check_header = 1
au BufNewFile,BufRead *.h set filetype=objc
au BufNewFile,BufRead *.m set filetype=objc
au BufNewFile,BufRead Podfile set filetype=ruby
au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
au BufNewFile,BufRead *.boot set filetype=clojure
au BufEnter *.edn set filetype=clojure
au BufNewFile,BufRead *.clj* nnoremap <buffer> <CR> :Ev<CR>
autocmd BufWritePost ~/.vimrc so %
"autocmd BufWritePost *_test.clj* silent RunTests
nnoremap Q <nop>
" au BufWrite *.js :Autoformat
