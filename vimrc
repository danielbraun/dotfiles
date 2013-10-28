" Required by Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'flazz/vim-colorschemes'
Bundle 'scrooloose/syntastic'
Bundle 'danielbraun/vim-autoformat'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'airblade/vim-gitgutter'
Bundle "einars/js-beautify"
Bundle 'groenewege/vim-less'

syntax enable
filetype plugin indent on
set ts=8 et sw=4 sts=4
colo zenburn
let g:syntastic_check_on_open=1

