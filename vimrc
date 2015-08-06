" Required by Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'chiel92/vim-autoformat'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'jnurmine/Zenburn'
Plugin 'tomasr/molokai'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'
Plugin 'majutsushi/tagbar'
Plugin 'mxw/vim-jsx'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fireplace'

call vundle#end()

syntax enable
filetype plugin indent on
set ts=8 et sw=4 sts=4
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
colo solarized

set colorcolumn=80
set cursorline
set autoread
set nu
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list = 1
let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_python_checkers = ['python', 'pep8', 'flake8', 'pyflakes']
let g:syntastic_objc_check_header = 1
au BufNewFile,BufRead *.h set filetype=objc
au BufNewFile,BufRead *.m set filetype=objc
au BufNewFile,BufRead Podfile set filetype=ruby
au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
