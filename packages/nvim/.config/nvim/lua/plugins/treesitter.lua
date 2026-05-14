return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Add custom languages not covered by extras
      vim.list_extend(opts.ensure_installed, {
        "graphql",
        "groovy",
        "htmldjango",
      })

      -- Custom incremental selection keymaps (User Preference)
      opts.incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>",
          node_incremental = "<CR>",
          scope_incremental = "<S-CR>",
          node_decremental = "<BS>",
        },
      }
    end,
  },
}

