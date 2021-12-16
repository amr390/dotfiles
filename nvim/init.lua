require("plugins")
require("options")

require("plugins.gitsigns")
require("plugins.cmp").config()
require("plugins.project").config()
require("plugins.floatterm").config()
require("plugins.telescope").config()
require("plugins.treesitter").config()
require("plugins.which-key").config()

require("langs")
require("keymappings")

vim.g.colors_name = O.colorscheme -- Colorscheme must get called after plugins are loaded or it will break new installs.

require("utils")
require("plugins/null-ls")
require("plugins/nvimtree")
require("lsp")
