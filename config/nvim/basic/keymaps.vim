" telescope
" nnoremap <leader>p :Telescope git_files<CR>
" nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader>fs :Telescope grep_string<CR>
nnoremap <leader>b :lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({previewer=false}))<CR>
nnoremap <leader>p :lua require('telescope.builtin').git_files(require('telescope.themes').get_dropdown({previewer=false}))<CR>
nnoremap <leader>ff :lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({previewer=false}))<CR>
nnoremap <leader>fh :lua require('telescope.builtin').builtin(require('telescope.themes').get_dropdown({previewer=false}))<CR>
nnoremap <leader>r :lua require('telescope.builtin').registers()<CR>

" Zoom / Restore pane.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <leader>z :ZoomToggle<CR>


