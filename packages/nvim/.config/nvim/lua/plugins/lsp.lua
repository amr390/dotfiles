return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- CSS/SCSS/Less overrides
        cssls = {
          settings = {
            css = { validate = true, lint = { unknownAtRules = "ignore" } },
            scss = { validate = true, lint = { unknownAtRules = "ignore" } },
            less = { validate = true, lint = { unknownAtRules = "ignore" } },
          },
        },

        -- Pyright overrides (from lang.python extra)
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "basic", -- Better type hints than default "off"
              },
            },
          },
        },

        -- VTSLS overrides (from lang.typescript extra)
        vtsls = {
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
          },
        },

        -- Yaml overrides (from lang.yaml extra)
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
    },
  },
}

