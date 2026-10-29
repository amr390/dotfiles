return {
  -- Custom DAP configurations for Next.js
  {
    "mfussenegger/nvim-dap",
    optional = true,
    opts = function()
      local dap = require("dap")
      if not dap.adapters["pwa-node"] then
        dap.adapters["pwa-node"] = {
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
      end

      if not dap.adapters["chrome"] then
        dap.adapters["chrome"] = {
          type = "executable",
          command = "node",
          args = {
            os.getenv("HOME") .. "/.local/share/nvim/mason/packages/chrome-debug-adapter/out/src/chromeDebug.js",
          },
        }
      end

      local js_based_languages = { "typescript", "javascript", "typescriptreact", "javascriptreact" }
      for _, language in ipairs(js_based_languages) do
        dap.configurations[language] = dap.configurations[language] or {}
        vim.list_extend(dap.configurations[language], {
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
        })
      end

      -- Groovy/Grails: attach to remote JVM debug session
      -- Start the app with: ./gradlew bootRun --debug-jvm  (or: grails -debug run-app)
      -- Then use this to attach on port 5005
      if not dap.configurations.groovy then
        dap.configurations.groovy = {
          {
            type = "java",
            request = "attach",
            name = "Debug (Attach) - Remote",
            hostName = "127.0.0.1",
            port = 5005,
          },
        }
      end
    end,
  },

  -- Venv selector for Python
  {
    "linux-cultist/venv-selector.nvim",
    branch = "regexp", -- Recommended branch
    opts = {
      auto_refresh = true,
    },
    keys = {
      { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select Virtualenv" },
      { "<leader>cV", "<cmd>VenvSelectCached<cr>", desc = "Select Cached Virtualenv" },
    },
  },

  -- Conform formatting
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        html = { "prettier" },
        groovy = { "npm-groovy-lint" },
      },
    },
  },

  -- Groovy linting via npm-groovy-lint
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        groovy = { "npm-groovy-lint" },
      },
    },
  },

  -- Ensure Groovy/Gradle tooling is installed via Mason
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "npm-groovy-lint" } },
  },
}
