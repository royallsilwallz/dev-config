 " map leader to space key
nnoremap <Space> <Nop>
let mapleader = " "

" Escape key remap
imap jk <Esc>

syntax on
set number relativenumber
set tabstop=2
" set shortmess=a
set noswapfile
set shiftwidth=2 softtabstop=2 expandtab

set wildmenu
set wildmode=full
set incsearch
set hlsearch

set mouse+=a
set clipboard+=unnamedplus
set autoindent
set guioptions+=a
set cursorline
" move between buffers without saving current file
set hidden
set foldmethod=syntax
" set nofoldenable
set nofoldenable
set nowrap
" set termguicolors 
" set ignorecase

if !has('nvim')
 set ttymouse=xterm2
endif

" split panes
nnoremap <leader>j :sp<CR>
nnoremap <leader>l :vs<CR>

"change splits
nnoremap <leader><leader>h <C-w>H
nnoremap <leader><leader>j <C-w>J
nnoremap <leader><leader>k <C-w>K
nnoremap <leader><leader>l <C-w>L

" save/quit
nnoremap <silent> <leader>w :w<CR>
nnoremap <leader>q :BufferClose<CR>
noremap <leader><leader>q :q!<CR>

" open new untitled tab
nnoremap <leader>n :tabnew<CR>

" move between tabs
nnoremap <Tab> :BufferNext<CR>
nnoremap <S-Tab> :BufferPrevious<CR>

" terminal
" nnoremap <leader>tk :term<CR>
" nnoremap <leader>tj :bo term<CR>
" nnoremap <leader>th :vert term<CR>
" nnoremap <leader>tl :vert botright term<CR>

" Goto buffer in position...
nnoremap <C-1> :BufferGoto 1<CR>
nnoremap <C-2> :BufferGoto 2<CR>
nnoremap <C-3> :BufferGoto 3<CR>
nnoremap <C-4> :BufferGoto 4<CR>
nnoremap <C-5> :BufferGoto 5<CR>
nnoremap <C-6> :BufferGoto 6<CR>
nnoremap <C-7> :BufferGoto 7<CR>
nnoremap <C-8> :BufferGoto 8<CR>
nnoremap <C-9> :BufferLast<CR>
