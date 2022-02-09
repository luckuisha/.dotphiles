" default vim changes
" :help setting for docs


" syntax
syntax on

" tabs
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" set custom .vimrc files in proj directory
set exrc

" navbar and line number
set relativenumber
set nu

" search highlight
set nohlsearch
set incsearch

" keep buffer in background
set hidden

" errorsound
set noerrorbells

" wrap text
set nowrap

" some stuff idk
set noswapfile
set nobackup

" undo even after reboot
set undodir=~/.vim/undodir
set undofile

" scrolling
set scrolloff=8

" auto complete?
set completeopt=menuone,noinsert,noselect

" coding 80 char column
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" extra column for linting
set signcolumn=yes

" scroll vim but not cursor
set mouse=a

" vim plug plugin manager
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
call plug#end()

colorscheme gruvbox
