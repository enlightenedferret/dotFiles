set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Add NERDTree plugin to Vundle
Plugin 'preservim/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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


"highlight columns beyond 80
execute "set colorcolumn=" . join(range(81,335), ',')
hi ColorColumn ctermbg=235 guibg=#2c2d27

hi CursorLine	cterm=NONE ctermbg=235
hi CursorColumn  cterm=NONE ctermbg=235
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

:autocmd VimEnter * :color slate
"
" Toggle NERDTree sidebar with Ctrl-n
map <C-n> :NERDTreeToggle<CR>

let NERDTreeMapMenu='u'

" Set NERDTree to automatically open on startup
autocmd VimEnter * if &filetype ==# 'python' | NERDTree | endif


augroup curs
    :autocmd!
    :autocmd VimEnter,WinEnter * set cursorline
    :autocmd VimEnter,WinEnter * set cursorcolumn
augroup END

augroup winCurs
    :autocmd!
    :autocmd WinLeave * set nocursorline
    :autocmd WinLeave * set nocursorcolumn
augroup END

augroup inCurs
    :autocmd!
    :autocmd InsertEnter * set nocursorline
    :autocmd InsertLeave * set cursorline
augroup END

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
set hlsearch

"get rid of F1 help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"Change mapping to scroll up and down with shift j, shift k
nnoremap X J
nnoremap J  <c-e>
nnoremap K <c-y>
"make switching buffers easier
nnoremap m <c-w>w


