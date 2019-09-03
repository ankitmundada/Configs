" encoding
set encoding=utf-8

" " show a context of few lines while scrolling down
set so=5

" " --------------------------------------------------
" " SHOWS SOME USEFUL INFO
" " --------------------------------------------------
"
" " display the line and column numbers at the bottom right
set ruler

" " show (partial) commands at bottom left corner
set showcmd 

" " show line number
set number

" " set how 'tab' and 'eol' chars are displayed
set listchars=tab:>\ ,eol:\ ,trail:.

" " map ESC to CTRL-q
imap qq <ESC>

" Let's save undo info!
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undodir")
    call mkdir($HOME."/.vim/undodir", "", 0770)
endif
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000



" " ------------------------------------------------
" " CONFIGURATION FOR VUNDLE PLUGIN MANAGER
" " ------------------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" For autocompletion
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_python_binary_path = 'python3'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin from http://vim-scripts.org/vim/scripts.html

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" All of your Plugins must be added before the following line
call vundle#end()            " required

" " ------------------------------------------------
" " CONFIGURATION FOR <TAB> & IDENTATION 
" " ------------------------------------------------

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


" " ------------------------------------------------
" " CONFIGURATION FOR USING SYSTEM CLIPBOARD
" " ------------------------------------------------
set clipboard=unnamedplus

noremap <C-]> :YcmCompleter GetDoc<CR>

