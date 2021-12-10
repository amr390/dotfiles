require("options")
require("langs")
require("keymappings")

require("plugins")
vim.g.colors_name = O.colorscheme -- Colorscheme must get called after plugins are loaded or it will break new installs.

require("utils")
require("lsp")
