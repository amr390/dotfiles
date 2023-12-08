return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "css",
        "gitcommit",
        "gitignore",
        "graphql",
        "groovy",
        "html",
        "htmldjango",
        "javascript",
        "json",
        "python",
        "scss",
        "sql",
        "typescript",
        "yaml",
      })
    end,
  },
}
