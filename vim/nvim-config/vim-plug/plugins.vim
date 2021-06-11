" vim-plug {
    call plug#begin('~/.local/share/nvim/plugged')
    " Use bundles config {
        if filereadable(expand("~/.local/share/nvim/.vimrc.bundles"))
            source ~/.local/share/nvim/.vimrc.bundles
        endif
    call plug#end()
    autocmd VimEnter *
                \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
                \|  PlugInstall --sync | q
                \| endif 
" }
