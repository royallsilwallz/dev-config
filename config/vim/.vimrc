" map leader to space key
nnoremap <Space> <Nop>
let mapleader = " "

syntax on
set number relativenumber
set tabstop=2
set shortmess=a
set shiftwidth=4 softtabstop=4 expandtab

set wildmenu
set wildmode=full
set incsearch
set hlsearch

set mouse=nvi
set clipboard=unnamed
set autoindent
set guioptions+=a
" set termguicolors 
" set ignorecase

if !has('nvim')
 set ttymouse=xterm2
endif


" Escape key remap
imap jk <Esc>

" split panes
nnoremap <leader>j :sp<CR>
nnoremap <leader>l :vs<CR>

" save/quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
noremap <leader><leader>q :q!<CR>

" open new untitled tab
nnoremap <leader>n :tabnew<CR>

" terminal
nnoremap <leader>tk :term<CR>
nnoremap <leader>tj :bo term<CR>
nnoremap <leader>th :vert term<CR>
nnoremap <leader>tl :vert botright term<CR>

" Explorer
let NERDTreeShowHidden=1
nnoremap <leader>e :NERDTreeToggle<CR>


" jump between panes with ctrl+hjkl
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

nnoremap <C-q> <C-v>

noremap <leader>n nzz
noremap <leader>N Nzz

" escape visual mode
vnoremap i <Esc>

" nnoremap <esc> :noh<return><esc>


" resize window
" nnoremap <C-)> <C-W>><CR>
" nnoremap <C-[> <C-W><

" matchit 
set nocompatible
filetype plugin indent on
runtime macros/matchit.vim

" plugins
call plug#begin('~/.vim/plugged')

Plug 'preservim/NERDTree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" themes
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'mhartington/oceanic-next'
Plug 'KeitaNakamura/neodark.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-css-color'

call plug#end()

set bg=dark
set nocompatible
colorscheme elflord 

" fzf
nnoremap <leader>p :Files<CR>

let g:neodark#use_custom_terminal_theme = 1 " default: 0

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
