
source ~/.config/nvim/plugins/plugins.vim
source ~/.config/nvim/utils/utils.vim
source ~/.config/nvim/basic/basic-config.vim
source ~/.config/nvim/basic/keymaps.vim
" source ~/.config/nvim/basic/nvim-tree.vim
source ~/.config/nvim/airline/airline.vim
source ~/.config/nvim/airline/tmuxline.vim
source ~/.config/nvim/lsp/lsp-config.vim
source ~/.config/nvim/treesitter/treesitter-setup.vim
" luafile ~/.config/nvim/lsp/compe-config.lua
" luafile ~/.config/nvim/compe/default.lua
luafile ~/.config/nvim/lsp/lspsaga.lua
luafile ~/.config/nvim/basic/barbar-config.lua
luafile ~/.config/nvim/cmp/default.lua
luafile ~/.config/nvim/telescope/telescope.lua
luafile ~/.config/nvim/nvimtree/nvimtree.lua
luafile ~/.config/nvim/comment/init.lua

set rtp+=~/code/nvim-plugins/whid

" float-term
nnoremap <leader>t :FloatermNew<CR>
nnoremap <C-`> :FloatermToggle<CR>

" nnoremap <leader>e :NvimTreeToggle<CR>
noremap  <leader>e :lua require'tree'.toggle()<CR>

" jump between panes with ctrl+hjkl
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

nnoremap <C-q> <C-v>

noremap <leader>n nzz
noremap <leader>N Nzz

" escape visual mode
vnoremap <C-j> <Esc>

nnoremap <CR> :noh<return><esc>

" resize window
nnoremap <silent> <C-left> :vertical resize -1<CR>
nnoremap <silent> <C-right> :vertical resize +1<CR>

" git fugitive
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gl :Git log<CR>
nnoremap <leader>gb :Git blame<CR>

" matchit 
set nocompatible
filetype plugin indent on
runtime macros/matchit.vim

" ranger
" nnoremap <silent> <leader>r :RnvimrToggle<CR>

set bg=dark
set t_Co=256
set nocompatible
if (has("termguicolors"))
 set termguicolors
endif

" Theme
colorscheme material
hi Normal guibg=NONE ctermbg=NONE 
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
" colorscheme oceanic_material
" let g:oceanic_material_transparent_background=1
" let g:oceanic_material_allow_bold=0

" git-gutter
highlight clear SignColumn

" let g:neodark#use_custom_terminal_theme = 1 " default: 0

" ale setup
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'javascriptreact': ['prettier'],
\   'typescript': ['prettier'],
\   'typescriptreact': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'html': ['prettier'],
\}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'javascriptreact': ['eslint'],
\   'typescript': ['eslint'],
\   'typescriptreact': ['eslint'],
\}
let g:ale_fix_on_save = 1
highlight ALEError ctermbg=none cterm=underline
highlight ALEWarning ctermbg=DarkMagenta cterm=underline
let g:ale_set_signs = 1
let g:ale_set_highlights = 1

" setup colorizer 
lua require'colorizer'.setup()

" lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.tsserver.setup{}

" compe
" inoremap <silent><expr> <S-Space> compe#complete()
" inoremap <silent><expr> <CR>      compe#confirm('<CR>')
" inoremap <silent><expr> <C-e>     compe#close('<C-e>')
" inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
" inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" lspsaga
" -- lsp provider to find the cursor word definition and reference
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
" -- code action
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
" -- rename
nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>

lua require'nvim-autopairs'.setup{}

lua require'nvim-tree'.setup({})

" highlight on yank
 au TextYankPost * silent! lua vim.highlight.on_yank()

" scratch file
nnoremap <leader><leader>n :call Newscratch()<CR>

