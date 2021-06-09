nnoremap <Space> <Nop>
let mapleader = " "

set number
set tabstop=2
set shortmess=a
set shiftwidth=4 softtabstop=4 expandtab

set wildmenu
set wildmode=full

syntax on

imap jk <Esc>

nnoremap <leader>j :sp<CR>

nnoremap <leader>l :vs<CR>

nnoremap <leader>w :w<CR>

nnoremap <leader>n :tabnew<CR>

"terminal
nnoremap <leader>tk :term<CR>
nnoremap <leader>tj :bo term<CR>
nnoremap <leader>th :vert term<CR>
nnoremap <leader>tl :vert botright term<CR>

nnoremap <leader>q :q<CR>
nnoremap <leader><leader>q :q!<CR>

nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

nnoremap <C-q> <C-v>

set bg=dark
