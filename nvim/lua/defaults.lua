CONFIG_PATH = vim.fn.stdpath("config")
DATA_PATH = vim.fn.stdpath("data")
CACHE_PATH = vim.fn.stdpath("cache")
TERMINAL = vim.fn.expand("$TERMINAL")
USER = vim.fn.expand("$USER")

O = {
	leader_key = ",",
	colorscheme = "spacegray",
	line_wrap_cursor_movement = true,
	transparent_window = false,
	format_on_save = true,
	vsnip_dir = CONFIG_PATH .. "/snippets",

	default_options = {
		backup = false, -- creates a backup file
		clipboard = "unnamedplus", -- allows neovim to access the system clipboard
		cmdheight = 2, -- more space in the neovim command line for displaying messages
		--    colorcolumn = "99999", -- fixes indentline for now
		completeopt = { "menuone", "noselect" },
		conceallevel = 0, -- so that `` is visible in markdown files
		fileencoding = "utf-8", -- the encoding written to a file
		guifont = "monospace:h17", -- the font used in graphical neovim applications
		hidden = true, -- required to keep multiple buffers and open multiple buffers
		hlsearch = false, -- highlight all matches on previous search pattern
		ignorecase = true, -- ignore case in search patterns
		mouse = "a", -- allow the mouse to be used in neovim
		pumheight = 10, -- pop up menu height
		showmode = false, -- we don't need to see things like -- INSERT -- anymore
		showtabline = 2, -- always show tabs
		smartcase = true, -- smart case
		smartindent = true, -- make indenting smarter again
		splitbelow = true, -- force all horizontal splits to go below current window
		splitright = true, -- force all vertical splits to go to the right of current window
		swapfile = false, -- creates a swapfile
		termguicolors = true, -- set term gui colors (most terminals support this)
		timeoutlen = 100, -- time to wait for a mapped sequence to complete (in milliseconds)
		title = true, -- set the title of window to the value of the titlestring
		-- opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
		undodir = CACHE_PATH .. "/undo", -- set an undo directory
		undofile = true, -- enable persisten undo
		updatetime = 300, -- faster completion
		writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
		expandtab = true, -- convert tabs to spaces
		shiftwidth = 2, -- the number of spaces inserted for each indentation
		tabstop = 2, -- insert 2 spaces for a tab
		cursorline = true, -- highlight the current line
		number = true, -- set numbered lines
		relativenumber = false, -- set relative numbered lines
		numberwidth = 2, -- set number column width to 2 {default 4}
		signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
		wrap = false, -- display lines as one long line
		spell = false,
		spelllang = "en",
		scrolloff = 8, -- is one of my fav
	},

	plugin = {},

	-- TODO: refactor for tree
	auto_close_tree = 0,
	nvim_tree_disable_netrw = 0,

	lsp = {
		document_highlight = true,
		popup_border = "single",
	},

	database = { save_location = "~/.config/nvim_db", auto_execute = 1 },

	-- TODO: just using mappings (leader mappings)
	user_which_key = {},

	user_plugins = {
		-- use lv-config.lua for this not put here
	},

	user_autocommands = {
		{ "FileType", "qf", "set nobuflisted" },
	},

	formatters = {
		filetype = {},
	},
}

require("core.status_colors")
require("core.gitsigns").config()
require("core.compe").config()
require("core.dashboard").config()
require("core.project").config()
require("core.dap").config()
require("core.floatterm").config()
require("core.zen").config()
require("core.telescope").config()
require("core.treesitter").config()
require("core.which-key").config()
