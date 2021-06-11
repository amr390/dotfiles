source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim 
source $HOME/.config/nvim/general/formatting.vim 
source $HOME/.config/nvim/keys/mappings.vim 
"source $HOME/.config/nvim/plug-config/coc.vim 
source $HOME/.config/nvim/plug-config/fzf.vim 
source $HOME/.config/nvim/plug-config/vim-surround.vim 
source $HOME/.config/nvim/plug-config/fugitive.vim 
source $HOME/.config/nvim/plug-config/nerdtree.vim 
source $HOME/.config/nvim/plug-config/vimwiki.vim 
source $HOME/.config/nvim/plug-config/vim-airline.vim

" Plugins {
       " PyMode {
        "let g:pymode_lint_checker = "pyflakes"
        "let g:pymode_utils_whitespaces = 0
        "let g:pymode_options = 0
        "let python_highlight_all=1
        au BufNewFile,BufRead .py
                    \ setlocal tabstop=4
                    \ setlocal softtabstop=4
                    \ setlocal shiftwidth=4
                    \ setlocal textwidth=80
                    \ setlocal expandtab
                    \ setlocal autoindent
                    \ setlocal fileformat=unix

        " Disable if python support not present
        "if !has('python')
            "let g:pymode = 1
        "endif
        "if has('python3')
            "let g:pymode_python= 'python3'
            "let s:python_version = 3
            "let g:jedi#force_py_version = 3
        "endif
    " }

    " jedi_vim
    " {
        "let g:jedi#use_tabs_not_buffers = 0  " use buffers instead of tabs
        "let g:jedi#show_call_signatures = "1"
        "let g:jedi#goto_command = "<localleader>gt"
        "let g:jedi#goto_assignments_command = "<localleader>ga"
        "let g:jedi#goto_definitions_command = "<localleader>gg"
        "let g:jedi#documentation_command = "K"
        "let g:jedi#usages_command = "<localleader>u"
        "let g:jedi#completions_command = "<C-Space>"
        "let g:jedi#rename_command = "<leader>r"
    " }

    " Syntastic { 
    " https://jaxbot.me/articles/setting-up-vim-for-react-js-jsx-02-03-2015
        "let g:syntastic_javascript_checkers = ['eslint', 'tslint']
        "let g:jsx_ext_required = 0 " Allow JSX in normal js files.  
    " }

    " tsuquyomi { 
        "let g:tsuquyomi_disable_quickfix = 1
        "let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
        " "Rename options
        "autocmd FileType typescript nmap <buffer> <Leader>r <Plug>(TsuquyomiRenameSymbol)
        "autocmd FileType typescript nmap <buffer> <Leader>R <Plug>(TsuquyomiRenameSymbolC)
    " }
    
    " typescript vim {
        " npm install tsc
        "let g:typescript_compiler_binary = 'tsc'
        "let g:typescript_compiler_options = ''
    " }

    " TagBar {
        "nnoremap <silent> <leader>tt :TagbarToggle<CR>

        " If using go please install the gotags program using the following
        " go install github.com/jstemmer/gotags
        " And make sure gotags is in your path
        "let g:tagbar_type_go = {
            "\ 'ctagstype' : 'go',
            "\ 'kinds'     : [  'p:package', 'i:imports:1', 'c:constants', 'v:variables',
                "\ 't:types',  'n:interfaces', 'w:fields', 'e:embedded', 'm:methods',
                "\ 'r:constructor', 'f:functions' ],
            "\ 'sro' : '.',
            "\ 'kind2scope' : { 't' : 'ctype', 'n' : 'ntype' },
            "\ 'scope2kind' : { 'ctype' : 't', 'ntype' : 'n' },
            "\ 'ctagsbin'  : 'gotags',
            "\ 'ctagsargs' : '-sort -silent'
            "\ }
    "}

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
    " https://code.djangoproject.com/wiki/UsingVimWithDjango
    " ultisnips {
        "let g:UltiSnipsExpandTrigger       = "<c-j>" " <c-j>
        "let g:UltiSnipsJumpForwardTrigger  = "<c-n>"
        "let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
        "let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file
        "let g:UltiSnipsEditSplit           = "horizontal"
        "let g:UltiSnipsSnippetDirectories  = ["UltiSnips", "~/Documents/dotfiles/vim/UltiSnips"]
        "let g:UltiSnipsSnippetsDir         = "~/Documents/dotfiles/vim/UltiSnips"
        "inoremap <expr><Tab>  pumvisible() ? "\<C-n>" : "\<Tab>"
    " }



    " VimCompletesMe {
        "autocmd FileType text,markdown let b:vcm_tab_complete = 'dict'
        
    " }

    " vim-gitgutter {
        " https://github.com/airblade/vim-gitgutter/issues/106
        let g:gitgutter_realtime = 0
    " }



    " YCM {
        "let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
        "let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
        "let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
        "let g:ycm_complete_in_comments = 1 " Completion in comments
        "let g:ycm_complete_in_strings = 1 " Completion in string
    " }

" }


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

" }
" Py-mode Rope {
" https://github.com/python-mode/python-mode/issues/525
    "let g:pymode_rope_regenerate_on_write = 0
" }

" spell {  zw to add valid word zg to add invalid word
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
"
" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
" from readme
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
