CONFIG_PATH = vim.fn.stdpath("config")
DATA_PATH = vim.fn.stdpath("data")
CACHE_PATH = vim.fn.stdpath("cache")
TERMINAL = vim.fn.expand("$TERMINAL")
USER = vim.fn.expand("$USER")

O = {
	leader_key = ",",
	colorscheme = "gruvbox",
	line_wrap_cursor_movement = true,
	transparent_window = false,
	format_on_save = true,
	vsnip_dir = CONFIG_PATH .. "/snippets",
	default_config = {
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
		mmp = 2000,
	},

	-- Better setup on each plugin definition
	plugin = {
		galaxyline = {
			active = true,
		},
		vimwiki = {
			active = true,
		},
	},

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

	user_autocommands = {
		{ "FileType", "qf", "set nobuflisted" },
	},

	formatters = {
		filetype = {},
	},
}

require("plugins.gitsigns").config()
require("plugins.cmp").config()
require("plugins.project").config()
require("plugins.floatterm").config()
require("plugins.telescope").config()
require("plugins.treesitter").config()
require("plugins.which-key").config()

---  HELPERS  ---

local cmd = vim.cmd
local opt = vim.opt

---  VIM ONLY COMMANDS  ---

cmd("filetype plugin on")
cmd('let &titleold="' .. TERMINAL .. '"')
cmd("set inccommand=split")
cmd("set iskeyword+=-")

if O.line_wrap_cursor_movement then
	cmd("set whichwrap+=<,>,[,],h,l")
end

if O.transparent_window then
	cmd("au ColorScheme * hi Normal ctermbg=none guibg=none")
	cmd("au ColorScheme * hi SignColumn ctermbg=none guibg=none")
	cmd("let &fcs='eob: '")
end

---  SETTINGS  ---

opt.shortmess:append("c")

local disabled_built_ins = {
	"netrw",
	"netrwPlugin",
	"netrwSettings",
	"netrwFileHandlers",
	"gzip",
	"zip",
	"zipPlugin",
	"tar",
	"tarPlugin", -- 'man',
	"getscript",
	"getscriptPlugin",
	"vimball",
	"vimballPlugin",
	"2html_plugin",
	"logipat",
	"rrhelper",
	"spellfile_plugin",
	-- 'matchit', 'matchparen', 'shada_plugin',
}

if O.leader_key == " " or O.leader_key == "space" then
	vim.g.mapleader = " "
else
	vim.g.mapleader = O.leader_key
end

for _, plugin in pairs(disabled_built_ins) do
	vim.g["loaded_" .. plugin] = 1
end

for k, v in pairs(O.default_config) do
	vim.opt[k] = v
end
