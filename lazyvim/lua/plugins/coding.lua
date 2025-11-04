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
            skipFiles = { "<node_internals>/**" },
            serverReadyAction = {
              action = "debugWithChrome",
              killOnServerStop = true,
              pattern = "- Local:.+(https?://.+)",
              uriFormat = "%s",
              webRoot = "${workspaceFolder}",
            },
            cwd = "${workspaceFolder}",
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
      "nvim-mini/mini.pick", -- for file_selector provider mini.pick
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
    enabled = false,
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
  -- Debug support for JavaScript and TypeScript (including Next.js)
  -- {
  --   "mxsdev/nvim-dap-vscode-js",
  --   dependencies = { "mfussenegger/nvim-dap" },
  --   event = "VeryLazy",
  --   config = function()
  --     require("dap-vscode-js").setup({
  --       -- Path to vscode-js-debug install, adjust if needed
  --       debugger_path = vim.fn.stdpath("data") .. "/dapinstall/js-debug",
  --       adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
  --     })
  --     for _, lang in ipairs({ "typescript", "javascript" }) do
  --       require("dap").configurations[lang] = {
  --         {
  --           type = "pwa-node",
  --           request = "launch",
  --           name = "Launch Current File",
  --           program = "${file}",
  --           cwd = "${workspaceFolder}",
  --         },
  --         {
  --           type = "pwa-node",
  --           request = "launch",
  --           name = "Debug Next.js (npm run dev)",
  --           runtimeExecutable = "npm",
  --           runtimeArgs = { "run", "dev" },
  --           cwd = "${workspaceFolder}",
  --           console = "integratedTerminal",
  --         },
  --         {
  --           type = "pwa-chrome",
  --           request = "launch",
  --           name = "Launch Chrome",
  --           url = "http://localhost:3000",
  --           webRoot = "${workspaceFolder}",
  --         },
  --       }
  --     end
  --     -- Allow debugging from Snacks picker list buffers (fallback to JavaScript configs)
  --     do
  --       local dap = require("dap")
  --       dap.configurations.snacks_picker_list = vim.deepcopy(dap.configurations.javascript)
  --     end
  --   end,
  -- },
}
