" air-line
let g:airline_powerline_fonts = 1
" let g:airline_theme='deus'
 let g:airline_theme='oceanicnext'

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

" let g:airline#extensions#branch#enabled=1
"
" enable tabline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = '|'
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#right_sep = '|'
"let g:airline#extensions#tabline#right_alt_sep = '|'
""let g:airline#extensions#tabline#show_buffers = 1
"" let g:airline#extensions#tabline#show_splits = 1
"let g:airline#extensions#tabline#switch_buffers_and_tabs = 0
"let g:airline#extensions#tabline#show_tab_count = 1
"set showtabline=2
"set noshowmode

" Ale integration
let g:airline#extensions#ale#enabled = 1

