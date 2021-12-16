require("options")
require("keymappings")

require("plugins")
require("plugins.gitsigns")
require("plugins.cmp")
require("plugins.project")
require("plugins.bufferline")
require("plugins.floatterm")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.which-key")
require("plugins.nvimtree")
require("plugins.null-ls")
require("utils")
require("lsp")

vim.g.colors_name = O.colorscheme -- Colorscheme must get called after plugins are loaded or it will break new installs.
