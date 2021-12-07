require("options")
require("plugins")

require("langs")
require("lsp")
require("keymappings")

vim.g.colors_name = O.colorscheme -- Colorscheme must get called after plugins are loaded or it will break new installs.

-- require("settings")
require("lv-utils")
