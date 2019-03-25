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

" " ------------------------------------------------
" " CONFIGURATION FOR <TAB> & IDENTATION
" " ------------------------------------------------

" " columnar width of a <TAB> character, NOTE: Its still interepreted
" " as a single character, but its columnar width is different than `1`
set tabstop=4

" " 1. number of spaces used when <TAB> is pressed in INSERT MODE.
" " 2. equals to the number of spaces traversed back when <BS>
" " is pressed in INSERT MODE
set softtabstop=4

" " insert spaces instead of tabs
set expandtab

" " how much shifting should be done when INDENTATION is invoked.
set shiftwidth=4

set autoindent

" " map ESC to CTRL-q
imap qq <ESC>

set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

