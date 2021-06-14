"https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
" supertab {
    "autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" }
" deoplete {a
    "set completeopt=longest,menuone,preview
    " Ignore current buffer for searches and around not sure what it is.
    "let g:deoplete#custom#option('ignore_sources', {'_': ['around', 'buffer']})
    "let g:deoplete#custom#sources = {}
    "let g:deoplete#custom#sources['javascript.jsx'] = ['file', 'ultisnips']
    "let g:deoplete#sources#jedi " pip install --user jedi
    "let g:tern#command = ['tern']
    "let g:tern#arguments = ['--persistent']
    "let g:deoplete#enable_at_startup = 1
" }

