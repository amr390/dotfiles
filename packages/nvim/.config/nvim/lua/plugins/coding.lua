return {
  -- https://github.com/ecosse3/nvim/blob/dev/lua/plugins/dap.lua
  {
    "mfussenegger/nvim-dap",
    lazy = true,
    event = "VeryLazy",
    dependencies = {
      { "theHamsta/nvim-dap-virtual-text", config = true },
      { "rcarriga/nvim-dap-ui", dependencies = { "nvim-neotest/nvim-nio" }, config = true },
    },
    config = function()
      require("dap").adapters["pwa-node"] = {
        type = "server",
        host = "localhost",
        port = "${port}",
        executable = {
          command = "node",
          args = {
            vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
            "${port}",
          },
        },
      }

      require("dap").adapters["chrome"] = {
        type = "executable",
        command = "node",
        args = {
          os.getenv("HOME") .. "/.local/share/nvim/mason/packages/chrome-debug-adapter/out/src/chromeDebug.js",
        },
      }

      local dap = require("dap")
      local js_based_languages = { "typescript", "javascript", "typescriptreact", "javascriptreact" }
      for _, language in ipairs(js_based_languages) do
        dap.configurations[language] = {
          {
            name = "Next.js: debug server",
            type = "pwa-node",
            request = "launch",
            program = "${workspaceFolder}/node_modules/next/dist/bin/next",
            runtimeArgs = { "--inspect" },
            skipFiles = { "<node_internals>/**", "**/node_modules/**" },
            serverReadyAction = {
              action = "debugWithChrome",
              killOnServerStop = true,
              pattern = "- Local:.+(https?://.+)",
              uriFormat = "%s",
              webRoot = "${workspaceFolder}",
            },
            cwd = "${workspaceFolder}/packages/web",
          },
          {
            name = "Next.js: debug client-side",
            type = "chrome",
            request = "launch",
            url = "http://localhost:3000",
            webRoot = "${workspaceFolder}",
            sourceMaps = true,
            sourceMapPathOverrides = {
              ["webpack://_N_E/*"] = "${webRoot}/*",
            },
          },
        }
      end
    end,
  },
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig", "mfussenegger/nvim-dap", "mfussenegger/nvim-dap-python" },
    opts = {
      -- Auto refresh when changing directories
      auto_refresh = true,
    },
    event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
    keys = {
      -- Keymap to open VenvSelector to pick a venv.
      { "<leader>cv", "<cmd>VenvSelect<cr>" },
      -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
      { "<leader>cV", "<cmd>VenvSelectCached<cr>" },
    },
  },
  {
    "olimorris/codecompanion.nvim",
    opts = {},
    lazy = true,
    enabled = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        html = { "prettier" },
      },
    },
  },
  {
    "mhartington/formatter.nvim",
    enabled = false,
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
