return {
  {
    "mason-org/mason.nvim",
    -- version = "^2.0.0",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "pyright",
        "stylua",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        -- npm i -g vscode-langservers-extracted
      })
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "^2.0.0",
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inline_hints = { enabled = true },
      servers = {
        cssls = {
          settings = {
            css = { validate = true, lint = { unknownAtRules = "ignore" } },
            scss = { validate = true, lint = { unknownAtRules = "ignore" } },
            less = { validate = true, lint = { unknownAtRules = "ignore" } },
          },
        },

        -- eslint = {
        --   -- root_dir = function(...)
        --   --   return require("lspconfig.util").root_pattern(".git", "node_modules")(...)
        --   -- end,
        -- },

        html = {},

        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                useLibraryCodeForTypes = true,
                typeCheckingMode = "off",
              },
            },
          },
        },
        tailwindcss = {
          root_dir = function(...)
            return require("lspconfig.util").root_pattern(".git")(...)
          end,
        },
        -- tsserver = {
        --   root_dir = function(...)
        --     return require("lspconfig.util").root_pattern(".git")(...)
        --   end,
        --   single_file_support = false,
        --   settings = {
        --     typescript = {},
        --     javascript = {},
        --   },
        -- },
        yamlls = {},
      },
      setup = {
        eslint = function()
          require("lazyvim.util").lsp.on_attach(function(client)
            if client.name == "eslint" then
              client.server_capabilities.documentFormattingProvider = true
            elseif client.name == "tsserver" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
      },
    },
  },
}
