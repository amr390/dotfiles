-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- add vimtex a laTex vim plugin
  {
    "lervag/vimtex",
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.o.foldmethod = "expr"
      vim.o.foldexpr = "vimtex#fold#level(v:lnum)"
      vim.o.foldtext = "vimtex#fold#text()"
      -- To see at least the content of the sections upon opening
      vim.o.foldlevel = 2
    end,
  },
}
