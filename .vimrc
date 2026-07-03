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
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
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

" =====================
" LSP SETUP (clangd)
" =====================
if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd']},
        \ 'allowlist': ['c', 'cpp'],
        \ })
endif

" Python LSP (pyright)
if executable('/usr/local/bin/pyright-langserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyright',
        \ 'cmd': {server_info->['pyright-langserver', '--stdio']},
        \ 'allowlist': ['python'],
        \ })
endif

" LSP settings
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_virtual_text_enabled = 1
let g:lsp_diagnostics_highlights_enabled = 1
let g:lsp_document_highlight_enabled = 1
let g:lsp_inlay_hints_enabled = 1
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 1

" LSP Keymaps
function! s:on_lsp_buffer_enabled() abort
    nnoremap <buffer> gd <plug>(lsp-definition)
    nnoremap <buffer> K  <plug>(lsp-hover)
    nnoremap <buffer> <leader>rn <plug>(lsp-rename)
    nnoremap <buffer> <leader>ca <plug>(lsp-code-action)
    nnoremap <buffer> <leader>e  <plug>(lsp-document-diagnostics)
    nnoremap <buffer> [g <plug>(lsp-previous-diagnostic)
    nnoremap <buffer> ]g <plug>(lsp-next-diagnostic)
endfunction

augroup lsp_install
    au!
    au User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

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
