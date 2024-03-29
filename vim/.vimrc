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

" backspace fix
set backspace=indent,eol,start

" navbar and line number
set relativenumber
set nu

" search highlight
set nohlsearch
set incsearch

" keep buffer in background
set hidden

" highlights current line
set cursorline

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
set scrolloff=7

" auto complete?
set completeopt=menuone,noinsert,noselect

" coding 80 char column
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" extra column for linting
set signcolumn=yes

" scroll vim but not cursor
set mouse=a

" term colors
"set t_Co=256
set t_ut=""
highlight Normal ctermfg=black ctermbg=lightgrey

" copy and paste from other programs
set clipboard=unnamedplus

" splits
set splitbelow splitright

" remove sound
set visualbell
set t_vb=

" vim plug plugin manager
call plug#begin('~/.vim/plugged')
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'

    Plug 'gruvbox-community/gruvbox'
call plug#end()


let mapleader = " "

" fuzzy finder remapping
nnoremap <C-p> :Files<Cr>
nnoremap <leader>ps :Rg<Cr>

" moving text without copying
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+2<CR>==

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" yank to behave normally
nnoremap Y y$

" undo breakpoints on punctuations
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

fun! Coloring() abort
    " change linehighlight to something less dramatic
    hi CursorLine cterm=NONE ctermbg=234 ctermfg=NONE
endfunction

augroup Color
    autocmd!
    autocmd ColorScheme * call Coloring()
augroup END

colorscheme gruvbox

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup UNLUCKY
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

if (&term =~ '^xterm' && &t_Co == 256)
    set t_ut= | set ttyscroll=1
endif
