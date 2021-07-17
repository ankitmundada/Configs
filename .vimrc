
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

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

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
" " CONFIGURATION FOR REMEBERING LAST POSITION
" " ------------------------------------------------

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

