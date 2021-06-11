" Vimwiki {
    let g:vimwiki_global_ext = 0
    let g:vimwiki_key_mappings = { 'table_mappings': 0, }
    let g:vimwiki_table_mappings = 0
    let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr, pre, script'

    let wiki = {}
    let wiki.path = '$HOME/Documents/net/Dropbox/wiki/'
    let wiki.template_path = '$HOME/Documents/net/Dropbox/wiki/templates'
    let wiki.template_default = 'def_template'
    let wiki.template_ext = '.html'
    let wiki.ext = '.md'
    "let wiki.syntax = 'markdown' " To avoid message conversion is not
    "supported for this syntax
    "let wiki.custom_wiki2html = 'vimwiki_markdown'
    let wiki.path_html = '$HOME/Documents/net/Dropbox/wiki/export/html'
    let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'java': 'java', 'groovy':'groovy', 'js':'javascript'}

    let g:vimwiki_list = [wiki] 
    let g:vimwiki_autowriteall = 1
    let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

    au BufRead,BufNewFile *.wiki set filetype=vimwiki
    :autocmd FileType vimwiki map <leader>d :VimwikiMakeDiaryNote
    function! ToggleCalendar()
        execute ":Calendar"
        if exists("g:calendar_open")
            if g:calendar_open == 1
                execute "q"
                unlet g:calendar_open
            else
                g:calendar_open = 1
            end
        else
            let g:calendar_open = 1
        end
    endfunction
    :autocmd FileType vimwiki map <leader>c :call ToggleCalendar()
" }
