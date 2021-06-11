" Formatting {

    set nowrap                      " Wrap long lines off
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=4                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent
    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
    set splitright                  " Puts new vsplit windows to the right of the current
    set splitbelow                  " Puts new split windows to the bottom of the current
    set matchpairs+=<:>             " Match, to be used with %
    set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
    "set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
    " Remove trailing whitespaces and ^M chars
    autocmd FileType c,cpp,java,groovy,go,php,javascript,ts,tsx,python,twig,xml,yml autocmd BufWritePre <buffer> call StripTrailingWhitespace()
    autocmd FileType go autocmd BufWritePre <buffer> Fmt
    autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
    au BufRead,BufNewFile *.scss set filetype=scss.css
    " preceding line best in a plugin but here for now.
    au BufNewFile,BufRead *.html,*.css,*.yml,*.yaml
                \ set tabstop=2     |
                \ set softtabstop=2 |
                \ set shiftwidth=2  |
                \ set expandtab     |
                \ set textwidth=120 |
                \ set autoindent    
    "Flagging Unnecessary Whitespace
    highlight BadWhitespace ctermbg=red guibg=darkred
    au BufRead,BufNewFile *.ts,*tsx,*.js,*.html,*.css,*.yml,*.yaml,*.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" }
