syntax on

" Sets
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
set wildmenu

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgray
highlight clear CursorLine 

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/AutoComplPop'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'preservim/vim-pencil'

call plug#end()


set background=dark

" Leader Key
let mapleader = " "

" Netrw
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:airline_theme='ayu_mirage'
let g:airline_powerline_fonts = 1
set t_Co=256

" Keymaps
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>nt :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>.. :NERDTree <bar> :vertical resize 30<CR>
nnoremap <silent> <Leader>= :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <Leader>vs :vertical split <CR>
nnoremap <Leader>hs :split <CR>
nnoremap <Leader>nb :bnext <CR>
nnoremap <Leader>pb :bprevious <CR>
nnoremap <Leader>db :bdelete <CR>
nnoremap <Leader>pdf :silent !mupdf *.pdf &<CR>
nnoremap <Leader>tpdf :!pdflatex *.tex<CR>
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a
nnoremap ,ptex :-1read $HOME/.vim/.skeleton.tex<CR>4jwwf>a
nnoremap ,btex :-1read $HOME/.vim/.skeleton2.tex<CR>4jwwf>a


" The vimwiki
let g:vimwiki_list = [{'path': '~/Documents/notes/'}]
             " 'syntax': 'markdown', 'ext': '.md'}]


" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
