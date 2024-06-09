" Required by Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

set mouse=a

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
" Other
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-repeat'
"Plugin 'ervandew/supertab'

" Syntax checking
Plugin 'scrooloose/syntastic'

" Clojure
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-surround'
Plugin 'guns/vim-clojure-static'
Plugin 'venantius/vim-cljfmt'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'guns/vim-slamhound'

" Testing
Plugin 'janko-m/vim-test'
call vundle#end()

filetype plugin indent on
syntax enable
set ts=8 et sw=4 sts=4

set bg=dark
colo zenburn
set t_ut= "Fixed bg redrawing with xterm-256color
set colorcolumn=80
set ignorecase
set cursorline
set completeopt-=preview "Disable preview when on omnicompletion
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list = 1
au BufEnter *.edn set filetype=clojure
au BufNewFile,BufRead *.clj* nnoremap <buffer> <CR> :Ev<CR>

set autowrite
set autoread

autocmd BufWritePost ~/.vimrc so %
nnoremap Q <nop>
set visualbell t_vb=
set noswapfile
set encoding=utf-8
