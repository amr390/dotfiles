-- TODO: find correct root filetype
-- :LspInstall angular
require("lspconfig").angularls.setup {
  cmd = { DATA_PATH .. "/lsp_servers/angular/node_modules/@angular/language-server/bin/ngserver", "--stdio" },
  on_attach = require("lsp").common_on_attach,
}
