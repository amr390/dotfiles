local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
	execute("packadd packer.nvim")
end

local packer_ok, packer = pcall(require, "packer")
if not packer_ok then
	return
end

packer.init({
	-- package_root = require("packer.util").join_paths(vim.fn.stdpath "data", "nvim", "pack"),
	git = { clone_timeout = 300 },
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "single" })
		end,
	},
})

return require("packer").startup(function(use)
	-- Packer can manage itself as an optional plugin
	use("wbthomason/packer.nvim")

	-- TODO: refactor all of this (for now it works, but yes I know it could be wrapped in a simpler function)
	use("neovim/nvim-lspconfig")
	use("tamago324/nlsp-settings.nvim")
	use("antoinemadec/FixCursorHold.nvim") -- Needed while issue https://github.com/neovim/neovim/issues/12587 is still open

	use("williamboman/nvim-lsp-installer")

	-- Telescope
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use({ "nvim-telescope/telescope.nvim", commit = "80cdb00b221f69348afc4fb4b701f51eb8dd3120" })

	-- Autocomplete and Snippets
	use({ "hrsh7th/nvim-cmp", requires = { "L3MON4D3/LuaSnip", "rafamadriz/friendly-snippets", }, })
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-vsnip")
	-- use({ "hrsh7th/f3fora-spell" })

	-- Autopairs
	use({
		"windwp/nvim-autopairs",
		-- event = "InsertEnter",
		after = { "telescope.nvim" },
		config = function()
			require("plugins.autopairs")
		end,
	})

	-- Snippets
	use("rafamadriz/friendly-snippets")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	use("nvim-treesitter/nvim-treesitter")

	-- -- Formatter.nvim
	-- use({
	-- 	"mhartington/formatter.nvim",
	-- 	config = function()
	-- 		require("plugins.formatter")
	-- 	end,
	-- })

	use({ "kyazdani42/nvim-web-devicons" })
	use("kyazdani42/nvim-tree.lua")

	use("lewis6991/gitsigns.nvim")

	-- whichkey
	use({ "folke/which-key.nvim"})

	-- Comments
	use({
		"terrortylor/nvim-comment",
		event = "BufRead",
		config = function()
			local status_ok, nvim_comment = pcall(require, "nvim_comment")
			if not status_ok then
				return
			end
			nvim_comment.setup()
		end,
	})

	-- vim-rooter
	use({
		"airblade/vim-rooter",
		config = function()
			vim.g.rooter_silent_chdir = 1
		end,
	})

	-- Status Line and Bufferline
	use({
		"glepnir/galaxyline.nvim",
		config = function()
			require("plugins.galaxyline")
		end,
		event = "BufWinEnter",
	})

	use({
		"romgrk/barbar.nvim",
		config = function()
			require("plugins.bufferline")
		end,
		event = "BufWinEnter",
	})

	-- Floating terminal
	use({ "numToStr/FTerm.nvim" })

	-- GRUVBOX THEME
	use({
		"npxbr/gruvbox.nvim",
		-- "ellisonleao/gruvbox.nvim",
		requires = { "rktjmp/lush.nvim" },
	})

	---------------------------------------------------------------------------------

	-- Javascript / Typescript
	use("jose-elias-alvarez/null-ls.nvim")
	use({
		"jose-elias-alvarez/nvim-lsp-ts-utils",
		ft = {
			"javascript",
			"javascriptreact",
			"javascript.jsx",
			"typescript",
			"typescriptreact",
			"typescript.tsx",
		},
	})

	-- use("mfussenegger/nvim-jdtls")
end)
