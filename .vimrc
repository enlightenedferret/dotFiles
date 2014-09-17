"Vundle stuff
set nocompatible
filetype off

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
"let Vundle manage itself
Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/scrooloose/syntastic.git'

call vundle#end()
filetype plugin on
"""""""Syntastic stuff""""
"show syntasticerror box
nnoremap <leader>e :lw<CR> 
"hide syntastic error box
nnoremap <leader>E :lcl<CR>
let g:syntastic_auto_jump=0
let g:syntastic_check_on_open=1
"""""""""""""""""""""""""""

syntax on
set history=1000
set title

"customize vsplit move behavior
if bufwinnr(1)
    "decrease width of current buffer
    map - <c-w><
    "increase width of current buffer
    map = <c-w>>
    "decrease height of current buffer
    map _ <c-w>-
    "increase height of current buffer
    map + <c-w>+
endif

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0)+5)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0)-5)<CR>


hi CursorLine	cterm=NONE ctermbg=235
hi CursorColumn  cterm=NONE ctermbg=235
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
:autocmd VimEnter * echo "Hello, Nick"
:autocmd VimEnter * set cursorline
:autocmd VimEnter * set cursorcolumn

:autocmd WinLeave * set nocursorline
:autocmd WinLeave * set nocursorcolumn

:autocmd BufEnter * set cursorline
:autocmd BufEnter * set cursorcolumn

:autocmd InsertEnter * set nocursorline
:autocmd InsertLeave * set cursorline

set undofile
set undodir=~/.vim/tmp/undo/
"set backup
"set backupdir=~/.vim/tmp/backup

set number
set showcmd
set splitbelow
set splitright
set wrap
set scrolloff=2

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent

"get rid of F1 help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"Documentaiton of the day
nnoremap <leader>h <C-w>v:e ~/.vim/bundle/vim-snippets/snippets/python.snippets<cr>
