local status_ok, tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end


-- local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
-- if not config_status_ok then
-- 	return
-- end
--
-- vim.print("loaded tree setup")
--
-- local tree_cb = nvim_tree_config.nvim_tree_callback

local mappings = require('spoonies/cfg-nvim-tree-on-attach')



tree.setup({
	disable_netrw = true,
	hijack_netrw = true,
	open_on_tab = false,
  on_attach = mappings.on_attach,
	hijack_cursor = false,
  hijack_directories = {
    enable= true,
    auto_open=true
  },
	update_cwd = true,
	diagnostics = {
		enable = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
		ignore_list = {},
	},
	system_open = {
		cmd = nil,
		args = {},
	},
	filters = {
		dotfiles = false,
		custom = {},
	},
	git = {
		enable = true,
		ignore = true,
		timeout = 500,
	},
	view = {
		width = 30,
		hide_root_folder = false,
		side = "left",
		number = false,
		relativenumber = false,
	},
  actions = {
    open_file = {
      resize_window = true,
    }
  },
	trash = {
		cmd = "trash",
		require_confirm = true,
	},
	renderer = {
		icons = {
			glyphs = {
				default = "",
				symlink = "",
				git = {
					unstaged = "",
					staged = "S",
					unmerged = "",
					renamed = "➜",
					deleted = "",
					untracked = "U",
					ignored = "◌",
				},
				folder = {
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
				},
			},
		},
	},
})
