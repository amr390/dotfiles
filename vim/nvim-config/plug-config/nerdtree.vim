" NerdTree {
        "map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
        map <C-e> :NERDTreeToggle<CR>
        map <leader>e :NERDTreeFind<CR>
        nmap <leader>nt :NERDTreeFind<CR>
        "" nerdtree toggle with ctrl n
        "nmap <C-n> :NERDTreeToggle<CR> 

        " open NERDTree automatically
        "autocmd StdinReadPre * let s:std_in=1
        "autocmd VimEnter * NERDTree

        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\node_modules']
        let NERDTreeChDirMode=0
        let NERDTreeQuitOnOpen=1
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=0
        let NERDTreeKeepTreeInNewTab=1
        let g:nerdtree_tabs_open_on_gui_startup=0
        let g:NERDTreeGitStatusWithFlags = 1
        "let g:WebDevIconsUnicodeDecorateFolderNodes = 1
        "let g:NERDTreeGitStatusNodeColorization = 1
        "let g:NERDTreeColorMapCustom = {
                    "\ "Staged"    : "#0ee375",  
                    "\ "Modified"  : "#d9bf91",  
                    "\ "Renamed"   : "#51C9FC",  
                    "\ "Untracked" : "#FCE77C",  
                    "\ "Unmerged"  : "#FC51E6",  
                    "\ "Dirty"     : "#FFBD61",  
                    "\ "Clean"     : "#87939A",   
                    "\ "Ignored"   : "#808080"   
                    "\ }                         
    " }
