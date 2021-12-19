call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
" Plug 'tpope/vim-obsession'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" color schemes
Plug 'mhartington/oceanic-next'
Plug 'haishanh/night-owl.vim'
Plug 'glepnir/oceanic-material'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

" Plug 'tpope/vim-commentary'
Plug 'numToStr/Comment.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'edkolev/tmuxline.vim'
Plug 'windwp/nvim-autopairs'

Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'akinsho/toggleterm.nvim'

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'glepnir/lspsaga.nvim'

" lint engine 
Plug 'dense-analysis/ale'

" explorer
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" tabline
Plug 'romgrk/barbar.nvim'

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()
