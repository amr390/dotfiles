vim.cmd([[
  augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR> 
    autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200}) 
    autocmd BufWinEnter * :set formatoptions-=cro
    autocmd FileType qf set nobuflisted
  augroup end

  augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
  augroup end

  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
  augroup end

  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd = 
  augroup end

  augroup _alpha
    autocmd!
    autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
  augroup end

  " disable syntax highlighting in big files
  function DisableSyntaxTreesitter()
      echo("Big file, disabling syntax, treesitter and folding")
      if exists(':TSBufDisable')
          exec 'TSBufDisable autotag'
          exec 'TSBufDisable highlight'
          " etc...
      endif

      set foldmethod=manual
      syntax clear
      syntax off    " hmmm, which one to use?
      filetype off
      set noundofile
      set noswapfile
      set noloadplugins
  endfunction

  augroup BigFileDisable
      autocmd!
      autocmd BufWinEnter * if getfsize(expand("%")) > 512 * 1024 | exec DisableSyntaxTreesitter() | endif
  augroup END
]])

-- Autoformat
-- augroup _lsp
--   autocmd!
--   autocmd BufWritePre * lua vim.lsp.buf.formatting()
-- augroup end
