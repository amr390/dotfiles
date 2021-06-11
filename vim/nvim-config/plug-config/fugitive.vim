" Fugitive {
    nnoremap <silent> <leader>gst :Git status<CR>
    nnoremap <silent> <leader>gd :Git diff<CR>
    nnoremap <silent> <leader>gc :Git commit<CR>
    nnoremap <silent> <leader>gb :Git blame<CR>
    nnoremap <silent> <leader>glog :Git log<CR>
    nnoremap <silent> <leader>gl :Git log<CR>
    nnoremap <silent> <leader>gp :Git push<CR>
    nnoremap <silent> <leader>gr :Git read<CR>:GitGutter<CR>
    nnoremap <silent> <leader>gw :Git write<CR>:GitGutter<CR>
    nnoremap <silent> <leader>ge :Git edit<CR>
    nnoremap <silent> <leader>gg :GitGutterToggle<CR>

    " Instead of reverting the cursor to the last position in the buffer, we
    " set it to the first line when editing a git commit message
    au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])
"}
