" Key (re)Mappings {
    " The default leader is '\'. 
    let mapleader = ','
    let maplocalleader = ';'

    " to move between buffers
    "map <C-J> <C-W>j<C-W>
    "map <C-K> <C-W>k<C-W>
    "map <C-L> <C-W>l<C-W>
    "map <C-H> <C-W>h<C-W>

    " to move between splitted buffers
    map <C-J> <C-W>j
    map <C-K> <C-W>k
    map <C-L> <C-W>l
    map <C-H> <C-W>h

    " Wrapped lines goes down/up to next row, rather than next line in file.
    noremap j gj
    noremap k gk

    " The following two lines conflict with moving to top and
    " bottom of the screen
    map <S-H> gT
    map <S-L> gt

    " opens search results in a window w/ links and highlight the matches
    command! -nargs=+ Grep execute 'silent grep! -I -r -n --exclude *.{xml,pyc} . -e <args>' | copen | execute 'silent /<args>'
    " ;-* Greps for the word under the cursor
    :nmap <localleader>* :Grep <c-r>=expand("<cword>")<cr><cr> 

    " Stupid shift key fixes
    "if has("user_commands")
        command! -bang -nargs=* -complete=file E e<bang> <args>
        command! -bang -nargs=* -complete=file W w<bang> <args>
        command! -bang -nargs=* -complete=file Wq wq<bang> <args>
        command! -bang -nargs=* -complete=file WQ wq<bang> <args>
        command! -bang Wa wa<bang>
        command! -bang WA wa<bang>
        command! -bang Q q<bang>
        command! -bang QA qa<bang>
        command! -bang Qa qa<bang>
    "endif


    " command Bd :up | %bd | e#  used like this :Bd -- deletes other buffers
    nnoremap <leader>bd :<c-u>up <bar> %bd <bar> e#<cr>

    cmap Tabe tabe

    " Yank from the cursor to the end of the line, to be consistent with C and D.
    nnoremap Y y$

    " Use leader to map global register operations to C, X, V
    map <leader>c "+y
    map <leader>x "+x
    map <leader>v "+gP

    " to redraw windows and hide search results
    nmap <silent> <leader>/ :set invhlsearch<CR>

    " in gui toggle menu tools bars
    nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
    nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
    nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

    " Find merge conflict markers
    map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>
    " Map <Leader>fk to display all lines with keyword under cursor
    " and ask which one to jump to
    nmap <Leader>fk [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

    " Shortcuts
    " Change Working Directory to that of the current file
    cmap cwd lcd %:p:h
    cmap cd. lcd %:p:h

    " Visual shifting (does not exit Visual mode)
    vnoremap < <gv
    vnoremap > >gv

    " Allow using the repeat operator with a visual selection (!)
    " http://stackoverflow.com/a/8064607/127816
    vnoremap . :normal .<CR>


    " For when you forget to sudo.. Really Write the file.
    cmap w!! w !sudo tee % >/dev/null

    " Some helpers to edit mode
    " http://vimcasts.org/e/14
    cnoremap %% <C-R>=expand('%:h').'/'<cr>
    map <leader>ew :e %%
    map <leader>es :sp %%
    map <leader>ev :vsp %%
    map <leader>et :tabe %%

    " Adjust viewports to the same size
    map <Leader>= <C-w>=
    map <Leader>_ <C-w>_

    " Easier horizontal scrolling
    map zl zL
    map zh zH

" }
" SQL {
"   requires pip install sqlformat
    nmap <leader>js <Esc>:%!sqlformat --reindent --keywords upper --identifier lower -<CR><Esc>:set filetype=json<CR>
" }

" JSON {
    nmap <leader>jt <Esc>:%!python3 -m json.tool<CR><Esc>:set filetype=json<CR>
" }

" HTML {
    vmap <leader>jh :!tidy -q -i --show-errors 0<CR> 
" }

" XML { map @@x !%xmllint --format --recover -^M
    nmap <leader>xt <Esc>:%!xmllint --format --recover -<CR><Esc>:set filetype=xml<CR>
" }

