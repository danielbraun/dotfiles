" Required by Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'danielbraun/vim-autoformat'
Bundle 'jmcantrell/vim-virtualenv'
Bundle "einars/js-beautify"
Bundle 'groenewege/vim-less'
Bundle 'kchmck/vim-coffee-script'
Bundle 'aaronj1335/underscore-templates.vim'
Bundle 'gorodinskiy/vim-coloresque'
Bundle 'jnurmine/Zenburn'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'myhere/vim-nodejs-complete'
Bundle 'pangloss/vim-javascript'
Bundle 'moll/vim-node'
Bundle 'marijnh/tern_for_vim'
Bundle 'lambdalisue/vim-django-support'

syntax enable
filetype plugin indent on
set ts=8 et sw=4 sts=4
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
colo zenburn
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_aggregate_errors = 1
