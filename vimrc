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
set termguicolors

set colorcolumn=80

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'mbbill/undotree'
Plug 'vimwiki/vimwiki'
Plug 'SilentGlasses/colorhighlighter'
Plug 'preservim/vim-pencil'
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'

call plug#end()

set background=dark
colorscheme gruvbox

" Transparency
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE

" Leader Key
let mapleader = " "

" Netrw
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
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
nnoremap <Leader>hc :ColorHighlightEnable <CR>
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a
nnoremap ,ptex :-1read $HOME/.vim/.skeleton.tex<CR>4jwwf>a
nnoremap ,btex :-1read $HOME/.vim/.skeleton2.tex<CR>4jwwf>a

" Notes
nnoremap <Leader>cc :e /media/data/Uni-Stuff/Semester7/compiler-construction/notes/notes.wiki<CR>

" My Todos
nnoremap <Leader>td :e ~/todo/todo.wiki<CR>

" The vimwiki
let g:vimwiki_list = [
            \ {'path': '~/Documents/notes/', 'syntax': 'markdown', 'ext': '.md'},
            \ {'path': '~Documents/notes/', 'syntax': 'default', 'ext': '.wiki'}
            \ ]

set path+=**
