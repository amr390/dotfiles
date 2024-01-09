return {
  "neovim/nvim-lspconfig",
  opts = {
    inline_hints = { enabled = true },
    servers = {
      cssls = {},
      tailwindcss = {
        root_dir = function(...)
          return require("lspconfig.util").root_pattern(".git")(...)
        end,
      },
      tsserver = {
        -- root_dir = function(...)
        --   return require("lspconfig.util").root_pattern(".git")(...)
        -- end,
        single_file_support = false,
        settings = {
          typescript = {
            inlayhints = {
              includeInlayParamterNameHints = "literal",
              includeInlayParamterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = true,
              includeVariableTypeHints = false,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            },
          },
          javascript = {
            inlayHints = {
              includeInlayParamterNameHints = "all",
              includeInlayParamterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParamterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              inlcudeInlayEnumMemberValueHints = true,
            },
          },
        },
      },
      html = {},
      yamlls = {},
      eslint = {},
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
}
