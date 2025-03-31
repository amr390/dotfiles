return {
  {
    "linux-cultist/venv-selector.nvim",
    enabled = true,
    dependencies = { "neovim/nvim-lspconfig", "mfussenegger/nvim-dap", "mfussenegger/nvim-dap-python" },
    -- dependencies = { "neovim/nvim-lspconfig", "mfussenegger/nvim-dap-python" },
    opts = {
      -- Your options go here
      -- name = "venv",
      -- auto_refresh = false
    },
    branch = "regexp",
    event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
    keys = {
      -- Keymap to open VenvSelector to pick a venv.
      { "<leader>cv", "<cmd>VenvSelect<cr>" },
      -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
      { "<leader>cV", "<cmd>VenvSelectCached<cr>" },
    },
  },
  {
    "kiddos/gemini.nvim",
    config = function()
      require("gemini").setup()
    end,
  },
}
