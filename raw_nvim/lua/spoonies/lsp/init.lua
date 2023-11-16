local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "spoonies.lsp.mason"
require("spoonies.lsp.handlers").setup()
require "spoonies.lsp.null-ls"
