set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"git interface
Plugin 'tpope/vim-fugitive'

"python sytax checker
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'

"Colors!!!
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'

call vundle#end()
filetype plugin indent on

let g:solarized_termcolors=256

set noswapfile
set nu
set background=dark
colorscheme solarized
"------------Start Python PEP 8 stuff----------------
"
au BufNewFile,BufRead *.py,*.sh
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1
syntax on

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start

" "Folding based on indentation:
autocmd FileType python set foldmethod=indent
"use space to open folds

"----------Stop python PEP 8 stuff--------------




