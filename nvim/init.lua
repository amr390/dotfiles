require("options")
require("keymappings")

require("plugins")
require("gitsigns")
require("cmp")
require("project")
require("bufferline")
require("floatterm")
require("telescope")
require("treesitter")
require("which-key")
require("nvimtree")
require("null-ls")
require("utils")
require("lsp")

vim.g.colors_name = O.colorscheme -- Colorscheme must get called after plugins are loaded or it will break new installs.
