syntax on

set nocompatible
filetype plugin on
set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set cursorline
set autoindent

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgray
highlight clear CursorLine 

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/AutoComplPop'
Plug 'preservim/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'vimwiki/vimwiki'

call plug#end()

" colorscheme solarized
set background=dark

let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
set t_Co=256


nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>ss :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>.. :NERDTree <bar> :vertical resize 30<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <Leader>sv :vertical split <CR>
nnoremap <Leader>sh :split <CR>

let g:vimwiki_list = [{'path': '~/Documents/notes/'}]
             " 'syntax': 'markdown', 'ext': '.md'}]

