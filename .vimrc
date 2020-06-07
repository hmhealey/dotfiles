set tabstop=4
set shiftwidth=4
set expandtab

set nu
set ruler

syntax on

" Turn off automatic text wrapping
set textwidth=0
set wrapmargin=0

" Highlight trailing whitespace and mixed spaces/tabs
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave call clearmatches()
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

" Set ignored files when using ctrl-p
set wildignore+=*.so,*.swp,*.zip,*.png,*/node_modules/*

" Set up Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Go
Plugin 'fatih/vim-go'

" JSX
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

let g:jsx_ext_required = 0

" Ctrl-P
Plugin 'ctrlpvim/ctrlp.vim'

" .editorconfig
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()

" I forget what this does at the time of setting up this respository
filetype plugin indent on
