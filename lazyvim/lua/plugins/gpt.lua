return {
  {
    "thmsmlr/gpt.nvim",
    enabled = false,
    init = function()
      require("gpt").setup({
        api_key = os.getenv("OPENAI_API_KEY"),
      })
    end,
    opts = function(_, opts)
      opts.silent = true
      opts.noremap = true
      vim.keymap.set("v", "<C-g>r", require("gpt").replace, {
        silent = true,
        noremap = true,
        desc = "[G]pt [R]ewrite",
      })
      vim.keymap.set("v", "<C-g>p", require("gpt").visual_prompt, {
        silent = false,
        noremap = true,
        desc = "[G]pt [P]rompt",
      })
      vim.keymap.set("n", "<C-g>p", require("gpt").prompt, {
        silent = true,
        noremap = true,
        desc = "[G]pt [P]rompt",
      })
      vim.keymap.set("n", "<C-g>c", require("gpt").cancel, {
        silent = true,
        noremap = true,
        desc = "[G]pt [C]ancel",
      })
      vim.keymap.set("i", "<C-g>p", require("gpt").prompt, {
        silent = true,
        noremap = true,
        desc = "[G]pt [P]rompt",
      })
    end,
  },
  {
    "jackMort/ChatGPT.nvim",
    enabled = false,
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("chatgpt").setup({
        api_key_cmd = "pass show neovim/chatgpt",
      })
    end,
  },
}
