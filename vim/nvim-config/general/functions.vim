" Functions {

    " Initialize directories {
    function! InitializeDirectories()
        let parent = $HOME
        let prefix = 'vim'
        let dir_list = {
                    \ 'backup': 'backupdir',
                    \ 'views': 'viewdir',
                    \ 'swap': 'directory' }

        if has('persistent_undo')
            let dir_list['undo'] = 'undodir'
        endif

        " To specify a different directory in which to place the vimbackup,
        " vimviews, vimundo, and vimswap files/directories, add the following to
        " your .vimrc.before.local file:
        let common_dir = parent . '/.' . prefix

        for [dirname, settingname] in items(dir_list)
            let directory = common_dir . dirname . '/'
            if exists("*mkdir")
                if !isdirectory(directory)
                    call mkdir(directory)
                endif
            endif
            if !isdirectory(directory)
                echo "Warning: Unable to create backup directory: " . directory
                echo "Try: mkdir -p " . directory
            else
                let directory = substitute(directory, " ", "\\\\ ", "g")
                exec "set " . settingname . "=" . directory
            endif
        endfor
    endfunction
    call InitializeDirectories()
    " }

    " Initialize NERDTree as needed {
    "function! NERDTreeInitAsNeeded()
        "redir => bufoutput
        "buffers!
        "redir END
        "let idx = stridx(bufoutput, "NERD_tree")
        "if idx > -1
            "NERDTreeMirror
            "NERDTreeFind
            "wincmd l
        "endif
    "endfunction
    " }

    " Strip whitespace {
    function! StripTrailingWhitespace()
        " To disable the stripping of whitespace, add the following to your
        " .vimrc.before.local file:
        "   let g:keep_trailing_whitespace = 1
        if !exists('g:keep_trailing_whitespace')
            " Preparation: save last search, and cursor position.
            let _s=@/
            let l = line(".")
            let c = col(".")
            " do the business:
            %s/\s\+$//e
            " clean up: restore previous search history, and cursor position
            let @/=_s
            call cursor(l, c)
        endif
    endfunction
    " }

    " Shell command {
    function! s:RunShellCommand(cmdline)
        botright new

        setlocal buftype=nofile
        setlocal bufhidden=delete
        setlocal nobuflisted
        setlocal noswapfile
        setlocal nowrap
        setlocal filetype=shell
        setlocal syntax=shell

        call setline(1, a:cmdline)
        call setline(2, substitute(a:cmdline, '.', '=', 'g'))
        execute 'silent $read !' . escape(a:cmdline, '%#')
        setlocal nomodifiable
        1
    endfunction

    command! -complete=file -nargs=+ Shell call s:RunShellCommand(<q-args>)
    " e.g. Grep current file for <search_term>: Shell grep -Hn <search_term> %
    " }
    
    " Django naviation {
        " for django file naviation
        let g:last_relative_dir = ''
        nnoremap \1 :call RelatedFile ("models.py")<cr>
        nnoremap \2 :call RelatedFile ("views.py")<cr>
        nnoremap \3 :call RelatedFile ("urls.py")<cr>
        nnoremap \4 :call RelatedFile ("admin.py")<cr>
        nnoremap \5 :call RelatedFile ("tests.py")<cr>
        nnoremap \6 :call RelatedFile ("templates/" )<cr>
        nnoremap \7 :call RelatedFile ("templatetags/" )<cr>
        nnoremap \8 :call RelatedFile ("management/" )<cr>
        nnoremap \0 :e settings.py<cr>
        nnoremap \9 :e urls.py<cr>

        fun! RelatedFile(file)
            #This is to check that the directory looks djangoish
            if filereadable(expand("%:h"). '/models.py') || isdirectory(expand("%:h") . "/templatetags/")
                exec "edit %:h/" . a:file
                let g:last_relative_dir = expand("%:h") . '/'
                return ''
            endif
            if g:last_relative_dir != ''
                exec "edit " . g:last_relative_dir . a:file
                return ''
            endif
            echo "Cant determine where relative file is : " . a:file
            return ''
        endfun

        fun SetAppDir()
            if filereadable(expand("%:h"). '/models.py') || isdirectory(expand("%:h") . "/templatetags/")
                let g:last_relative_dir = expand("%:h") . '/'
                return ''
            endif
        endfun
        autocmd BufEnter *.py call SetAppDir()
    "}

    "spell {  zw to add valid word zg to add invalid word
    inoremap <expr> <c-x><c-k> SpellCheck("\<c-x>\<c-k>")
    nnoremap z= :<c-u>call SpellCheck()<cr>z=
    function! SpellCheck(...)
        let s:spell_restore = &spell
        set spell
        augroup restore_spell_option
            autocmd!
            autocmd CursorMoved,CompleteDone <buffer> let &spell = s:spell_restore | autocmd! restore_spell_option
        augroup END
        return a:0 ? a:1 : ''
    endfunction"
    " }

    " sync open file with NERDTree
    " Check if NERDTree is open or active
    function! IsNERDTreeOpen()        
        return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
    endfunction

    " Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
    " file, and we're not in vimdiff
    function! SyncTree()
        "if IsNERDTreeOpen()
            "NERDTreeToggle
        "endif
        if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
            NERDTreeFind
            wincmd p
        endif
    endfunction

    " Highlight currently open buffer in NERDTree
    autocmd BufEnter * call SyncTree()

    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction



    " }
