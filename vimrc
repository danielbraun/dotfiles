" Required by Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chiel92/vim-autoformat'
Plugin 'gmarik/Vundle.vim'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'groenewege/vim-less'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'jnurmine/Zenburn'
Plugin 'kchmck/vim-coffee-script'
Plugin 'majutsushi/tagbar'
Plugin 'moll/vim-node'
Plugin 'mxw/vim-jsx'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-surround'

call vundle#end()

syntax enable
filetype plugin indent on
set ts=8 et sw=4 sts=4
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2

let hour = strftime("%H")
if 6 <= hour && hour < 18
    set background=light
else
    set background=dark
endif
colo solarized

set colorcolumn=80
set cursorline
set autoread
set nu
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_python_checkers = ['python', 'pep8', 'flake8', 'pyflakes']
let g:syntastic_objc_check_header = 1
au BufNewFile,BufRead *.h set filetype=objc
au BufNewFile,BufRead *.m set filetype=objc
au BufNewFile,BufRead Podfile set filetype=ruby
au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
