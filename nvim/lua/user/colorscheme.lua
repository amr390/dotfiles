vim.api.nvim_command([[
    augroup ChangeBackgroudColour
        autocmd colorscheme * :hi normal guibg=None
        autocmd colorscheme * :hi normal ctermbg=None
    augroup END
]])
vim.o.termguicolors = true
vim.cmd [[silent! colorscheme NeoSolarized]]
