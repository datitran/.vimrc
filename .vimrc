" Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'duff/vim-trailing-whitespace'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/seoul256.vim'
Plugin 'ajh17/vimcompletesme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" All settings should be after Vundle due to loading of plugins

" Global settings
" Enable syntax highlighting
syntax enable
" Show line numbers
set number
" Tabs are 2 spaces
set ts=2
" Backspace over everything in insert mode
set bs=2
" Tabs under smart indent
set shiftwidth=2
" Expand tabs into spaces
set expandtab
" Indent when moving to the next line
set autoindent
" Show a visual line under the cursor's current line
"set cursorline
" Show the matching part of the pair for [] {} and ()
set showmatch
" Set theme and colorscheme
let g:seoul256_background = 233
colo seoul256
" Set fonttype and size
set guifont=Input\ Mono\ Condensed:h13
" Let airline appear all the time
set laststatus=2
" Set no max file limit
let g:ctrlp_max_files = 25000
" Search from current directory instead of project root
let g:ctrlp_working_path_mode = 'rw'
" Relative path if invoking ctrlp
let g:ctrlp_default_input = 1


" Python specific settings
au BufNewFile,BufRead *.py
    \ set tabstop=4 " Set tabs to have 4 spaces
    \ set softtabstop=4 " Same as tabstop i.e. use tabs
    \ set shiftwidth=4 " Shift lines by 4 spaces
    \ set textwidth=79 " Break at 79
    \ set expandtab " Expand tabs into spaces
    \ set autoindent " Indent when moving to the next line
    \ set fileformat=unix

" Enable all Python syntax highlighting features
let python_highlight_all = 1

