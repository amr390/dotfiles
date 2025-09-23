return {
  {
    "linux-cultist/venv-selector.nvim",
    enabled = true,
    dependencies = { "neovim/nvim-lspconfig", "mfussenegger/nvim-dap", "mfussenegger/nvim-dap-python" },
    opts = {
      -- Auto refresh when changing directories
      auto_refresh = true,
    },
    --    branch = "regexp",
    event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
    keys = {
      -- Keymap to open VenvSelector to pick a venv.
      { "<leader>cv", "<cmd>VenvSelect<cr>" },
      -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
      { "<leader>cV", "<cmd>VenvSelectCached<cr>" },
    },
  },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false, -- Never set this value to "*"! Never!
    opts = {
      provider = "gemini",
    },
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "echasnovski/mini.pick", -- for file_selector provider mini.pick
      "ibhagwan/fzf-lua", -- for file_selector provider fzf
      "nvim-tree/nvim-web-devicons",
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            use_absolute_path = true,
          },
        },
      },
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
  {
    "mhartington/formatter.nvim",
    event = "BufWritePre", -- Load on buffer write pre-event
    cmd = { "Format", "FormatWrite" }, -- Load when these commands are used
    config = function()
      require("formatter").setup({
        logging = false,
        filetype = {
          python = {
            -- Add formatters for Python files
            require("formatter.filetypes.python").black,
          },
          html = {
            -- Add formatters for HTML files
            require("formatter.filetypes.html").prettier(),
          },
          django = {
            -- Add formatters for Django templates
            require("formatter.filetypes.html").prettier(),
          },
          javascript = {
            require("formatter.filetypes.javascript").prettier,
          },
          typescript = {
            require("formatter.filetypes.typescript").prettier,
          },
          json = {
            require("formatter.filetypes.json").prettier,
          },
          css = {
            require("formatter.filetypes.css").prettier,
          },
          lua = {
            require("formatter.filetypes.lua").stylua,
          },
        },
      })
      -- Create autocommand to format on save
      vim.api.nvim_create_autocmd("BufWritePost", {
        pattern = "*",
        callback = function()
          local filetype = vim.bo.filetype
          if
            vim.tbl_contains({ "python", "html", "django", "javascript", "typescript", "json", "css", "lua" }, filetype)
          then
            vim.cmd("FormatWrite")
          end
        end,
      })
    end,
  },
}
