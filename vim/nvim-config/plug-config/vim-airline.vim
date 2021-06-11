    " vim-airline {
        " Set configuration options for the statusline plugin vim-airline.
        " Use the powerline theme and optionally enable powerline symbols.
        " To use the symbols , , , , , , and .in the statusline
        " segments add the following to your .vimrc.before.local file:
        let g:airline_powerline_fonts=1
        " If the previous symbols do not render for you then install a
        " powerline enabled font.
        if !exists('g:airline_powerline_fonts')
            " Use the default set of separators with a few customizations
            let g:airline_left_sep='›'  " Slightly fancier than '>'
            let g:airline_right_sep='‹' " Slightly fancier than '<'
        endif

        "let g:airline_theme = 'powerlineish'
        let g:airline_theme = 'jellybeans'
        "let g:airline_left_sep = ''
        "let g:airline_left_sep = ''
        "let g:airline_right_sep = ''
        "let g:airline_right_sep = ''

        if !exists('g:airline_symbols')
            let g:airline_symbols = {}
        endif

        " unicode symbols
        let g:airline_left_sep = '»'
        let g:airline_left_sep = '▶'
        let g:airline_right_sep = '«'
        let g:airline_right_sep = '◀'
        "let g:airline_symbols.linenr = '␊'
        "let g:airline_symbols.linenr = '␤'
        "let g:airline_symbols.linenr = '¶'
        "let g:airline_symbols.branch = '⎇'
        "let g:airline_symbols.paste = 'ρ'
        "let g:airline_symbols.paste = 'Þ'
        "let g:airline_symbols.paste = '∥'
        "let g:airline_symbols.whitespace = 'Ξ'

        " airline symbols
        "let g:airline_left_sep = ''
        "let g:airline_left_alt_sep = ''
        "let g:airline_right_sep = ''
        "let g:airline_right_alt_sep = ''
        let g:airline_symbols.branch = ''
        let g:airline_symbols.readonly = ''
        let g:airline_symbols.linenr = ''
        
        "if has('statusline')
            "set laststatus=2

            "" Broken down into easily includeable segments
            "set statusline=%<%f\                     " Filename
            "set statusline+=%w%h%m%r                 " Options
            "set statusline+=%{fugitive#statusline()} " Git Hotness
            "set statusline+=\ [%{&ff}/%Y]            " Filetype
            "set statusline+=\ [%{getcwd()}]          " Current dir
            "set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
        "endif

    " }
