require("defaults")
require("langs")
require("keymappings")

require("plugins")
vim.g.colors_name = O.colorscheme -- Colorscheme must get called after plugins are loaded or it will break new installs.

require("settings")
require("lv-utils")

-- TODO: these guys need to be in language files
require("lsp")
-- if O.lang.emmet.active then
--   require "lsp.emmet-ls"
-- end

if O.lang.tailwindcss.active then
	require("lsp.tailwindcss-ls")
end
if O.lang.tsserver.active then
	require("lsp.tsserver-ls")
end
