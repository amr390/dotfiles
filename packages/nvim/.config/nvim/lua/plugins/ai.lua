return {
  {
    "olimorris/codecompanion.nvim",
    enabled = true,
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("codecompanion").setup({
        strategies = {
          chat = {
            adapter = "ollama",
            keymaps = {
              send = {
                modes = {
                  n = { "<CR>" },
                  i = nil,
                },
              },
              close = {
                modes = {
                  n = "q",
                  i = "<c-x>",
                },
              },
              stop = {
                modes = {
                  n = "<c-x>",
                },
              },
            },
          },
          inline = {
            adapter = "ollama",
          },
          agent = {
            adapter = "ollama",
          },
        },
        adapters = {
          ollama = function()
            return require("codecompanion.adapters").extend("ollama", {
              schema = {
                model = {
                  default = "gemma4:26b",
                },
              },
            })
          end,
        },
      })
    end,
  },
}
