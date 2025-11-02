return {
  {
    "mason-org/mason.nvim",
    version = "*",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "pyright",
        "stylua",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "eslint-lsp",
        "json-lsp",
        "yaml-language-server",
        "black", -- Python formatter
        "prettier", -- JavaScript/TypeScript formatter
      })
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "*",
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

        eslint = {
          root_dir = function(...)
            return require("lspconfig.util").root_pattern(
              ".git",
              "node_modules",
              ".eslintrc",
              ".eslintrc.js",
              ".eslintrc.json"
            )(...)
          end,
        },

        html = {},

        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                useLibraryCodeForTypes = true,
                typeCheckingMode = "basic", -- Changed from "off" to "basic" for better type hints
              },
            },
          },
        },

        tailwindcss = {
          root_dir = function(...)
            return require("lspconfig.util").root_pattern(".git")(...)
          end,
        },

        tsserver = {
          root_dir = function(...)
            return require("lspconfig.util").root_pattern(".git")(...)
          end,
          single_file_support = false,
          settings = {
            typescript = {
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
            javascript = {
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
          },
        },

        yamlls = {
          settings = {
            yaml = {
              keyOrdering = false,
              schemaStore = {
                enable = true,
                url = "https://www.schemastore.org/api/json/catalog.json",
              },
            },
          },
        },
      },
      setup = {
        -- eslint = function()
        --   require("Snacks.util").lsp.on(function(client)
        --     if client.name == "eslint" then
        --       client.server_capabilities.documentFormattingProvider = true
        --     elseif client.name == "tsserver" then
        --       client.server_capabilities.documentFormattingProvider = false
        --     end
        --   end)
        -- end,
      },
    },
  },
}
