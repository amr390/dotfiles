O.formatters.filetype["sh"] = {
  function()
    return {
      exe = O.lang.sh.formatter.exe,
      args = O.lang.sh.formatter.args,
      stdin = not (O.lang.sh.formatter.stdin ~= nil),
    }
  end,
}

require("formatter.config").set_defaults {
  logging = false,
  filetype = O.formatters.filetype,
}
if not require("lv-utils").check_lsp_client_active "bashls" then
  -- npm i -g bash-language-server
  require("lspconfig").bashls.setup {
    cmd = { DATA_PATH .. "/lsp_servers/bash/node_modules/.bin/bash-language-server", "start" },
    on_attach = require("lsp").common_on_attach,
    filetypes = { "sh", "zsh" },
  }
end

-- sh
local sh_arguments = {}

local shfmt = { formatCommand = "shfmt -ci -s -bn", formatStdin = true }

local shellcheck = {
  LintCommand = "shellcheck -f gcc -x",
  lintFormats = { "%f:%l:%c: %trror: %m", "%f:%l:%c: %tarning: %m", "%f:%l:%c: %tote: %m" },
}

if O.lang.sh.linter == "shellcheck" then
  table.insert(sh_arguments, shellcheck)
end

if not require("lv-utils").check_lsp_client_active "efm" then
  require("lspconfig").efm.setup {
    -- init_options = {initializationOptions},
    cmd = { DATA_PATH .. "/lsp_servers/efm/efm-langserver" },
    init_options = { documentFormatting = true, codeAction = false },
    root_dir = require("lspconfig").util.root_pattern ".git/",
    filetypes = { "sh" },
    settings = {
      rootMarkers = { ".git/" },
      languages = {
        sh = sh_arguments,
      },
    },
  }
end
