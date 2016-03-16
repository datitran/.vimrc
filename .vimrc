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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'duff/vim-trailing-whitespace'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/seoul256.vim'
Plugin 'ajh17/vimcompletesme'
Plugin 'yggdroot/indentline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jiangmiao/auto-pairs'

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
" Softtabsstops are 2 spaces
set softtabstop=2
" Tabs under smart indent
set shiftwidth=2
" Expand tabs into spaces
set expandtab
" Indent when moving to the next line
set autoindent
" Show a visual line under the cursor's current line
set cursorline
" Disable cursor blink
set gcr=a:blinkon0
" Show the matching part of the pair for [] {} and ()
set showmatch
" Set default encoding to UTF-8
if !has('nvim')
  set encoding=utf-8
endif
" Set theme and colorscheme
let g:seoul256_background = 233
colo seoul256
" Set differnt theme for GUI
if has('gui_running')
  colo solarized
  set background=light
endif
" Set fonttype and size
set guifont=Input\ Mono\ Condensed:h13
" Let airline appear all the time
set laststatus=2
" Set no max file limit
let g:ctrlp_max_files = 25000
" Search from current directory instead of project root
let g:ctrlp_working_path_mode = 0
" Relative path if invoking ctrlp
let g:ctrlp_default_input = 1
" Activate indentLine
let g:indentLine_enabled = 1
" Leading space is "."
"let g:indentLine_leadingSpaceChar = '.'
" Enable leading spaces
"let g:indentLine_leadingSpaceEnabled = 1
" Show first indent level
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_first_char = "|"
"let g:indentLine_char = ""
" Somehow allowed fileType does not work, i.e. use fileTypeExclude
let g:indentLine_fileType = []
let g:indentLine_fileTypeExclude = ['text', 'sh', 'sql']
let g:indentLine_color_gui = '#ff0000'

" Searching
" Highlight matches
set hlsearch
" Incremental searching
set incsearch

" List chars
set list                          " Show invisible characters
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen

if has("gui_macvim")
  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to
  " the right side. Ctrl-Shift-Tab goes the other way.
  noremap <C-Tab> :tabnext<CR>
  noremap <C-S-Tab> :tabprev<CR>

  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>
endif

if has("gui_running")
  if has("autocmd")
    " Automatically resize splits when resizing MacVim window
    autocmd VimResized * wincmd =
  endif
endif

" Backup and swap files

" Create folders for backup and swap files first
" mkdir ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

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
