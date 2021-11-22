local M = {}
M.config = function()
	O.plugin.dashboard = {
		active = true,
		search_handler = "telescope",
		custom_header = {
			"⠀⠀⠀⠀⠀⠀⠀     ⠀⠀⠀⠀   ⠀⠀⠸⣷⡄⠀⠀⠀⠀⠀⠸⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                 ",
			"⠀⠀⠀⠀⠀⠀⠀     ⠀⠀⠀⠀   ⠀⠀⠀⠸⣷⡄    ⠀⠸⣷⡄    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                 ",
			"⠀⠀⠀⠀⠀⠀⠀     ⠀⠀⠀⠀   ⠀⠀⠀⠀⠸⣷⡄⠀⠀⠀⠀⠀⠸⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                 ",
			"⠀  ⠀⠀⠀⠀     ⠀⠀⠀⠀   ⠀⠀⠀⠀⠀⠸⣷⡄⠀⠀⠀⠀⠀⠸⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                   ",
			"                         ⠸⣷⡄     ⠸⣷⡄                            ",
			"        ⢀⣠⣤⣤⣤⡀           ⢀⣿⣷⣤⣤⡀  ⢀⣿⣷⣤⣤⡀⠉⠢⠤⠀⠀         ⢀⣠⣤⣤⣤⡀⠀    ",
			"       ⠀⣿⣿⠉⠀⠈⣿   ⢨⣭⣠⣤⣤⣤⡀ ⣾⣿⠀ ⣿⣿⠀⠀⣾⣿⠀ ⣿⣿     ⢨⣭⣠⣤⣤⣤⡀  ⣿⣿⠉⠀⠈⣿⠀    ",
			"        ⢿⣿⣤⣤⣤⡀   ⣿⣿⠉⠀⠈⣿⡇ ⠀⣿⣿⠀ ⣿⣿⠀⠀⣿⣿⠀ ⣿⣿ ⠀  ⣿⣿⠉⠀⠈⣿⡇ ⠀⢿⣿⣤⣤⣤⡀     ",
			"            ⣿⣿  ⢠⣿⡇⠀⠀⢰⣿⡇  ⠀⣿⣿⠀ ⣿⣿⠀⠀⣿⣿⠀ ⣿⣿  ⢠⣿⡇⠀⠀⢰⣿⡇      ⣿⣿     ",
			"        ⢿⣤⣤⣤⣿⡿  ⢸⣿⣤⣤⣤⣼⣿⠀   ⠀⢿⣿⣤⣤⣿⡿⠀⠀⢿⣿⣤⣤⣿⡿ ⢸⣿⠁⠀⠀⣼⣿⠀  ⢿⣤⣤⣤⣿⡿⠀    ",
			"         ⠉⠉⠉⠉   ⣿⣿⠉⠉⠉⠉       ⠉⠉⠉⠉    ⠉⠉⠉⠉  ⠉⠉   ⠉⠉    ⠉⠉⠉⠉      ",
			"               ⢠⣿⡇                                             ⠀",
			"               ⢸⣿⠁                                              ",
			"                                                                ",
			"              Based on LunarVim: chrisatmachine.com             ",
		},

		custom_section = {
			a = {
				description = { "  Find File          " },
				command = "Telescope find_files",
			},
			b = {
				description = { "  New File           " },
				command = ":ene!",
			},
			c = {
				description = { "  Recent Projects    " },
				command = "Telescope projects",
			},
			d = {
				description = { "  Recently Used Files" },
				command = "Telescope oldfiles",
			},
			e = {
				description = { "  Load Last Session  " },
				command = "SessionLoad",
			},
			f = {
				description = { "  Find Word          " },
				command = "Telescope live_grep",
			},
			g = {
				description = { "  Settings           " },
				command = ":e " .. CONFIG_PATH .. "/lv-config.lua",
			},
		},

		footer = { "spOOndevs" },
	}
end

M.setup = function()
	vim.g.dashboard_disable_at_vimenter = 0

	vim.g.dashboard_custom_header = O.plugin.dashboard.custom_header

	vim.g.dashboard_default_executive = O.plugin.dashboard.search_handler

	vim.g.dashboard_custom_section = O.plugin.dashboard.custom_section

	-- f = {
	--   description = { "  Neovim Config Files" },
	--   command = "Telescope find_files cwd=" .. CONFIG_PATH,
	-- },
	-- e = {description = {'  Marks              '}, command = 'Telescope marks'}
	vim.cmd("let g:dashboard_session_directory = $HOME..'/.config/nvim/.sessions'")
	vim.cmd("let packages = len(globpath('~/.local/share/nvim/site/pack/packer/start', '*', 0, 1))")

	vim.api.nvim_exec(
		[[
    let g:dashboard_custom_footer = ['LuaJIT loaded '..packages..' plugins']
    ]],
		false
	)

	-- file_browser = {description = {' File Browser'}, command = 'Telescope find_files'},

	-- vim.g.dashboard_session_directory = CACHE_PATH..'/session'
	-- vim.g.dashboard_custom_footer = O.dashboard.footer
	require("lv-utils").define_augroups({
		_dashboard = {
			-- seems to be nobuflisted that makes my stuff disapear will do more testing
			{
				"FileType",
				"dashboard",
				"setlocal nocursorline noswapfile synmaxcol& signcolumn=no norelativenumber nocursorcolumn nospell  nolist  nonumber bufhidden=wipe colorcolumn= foldcolumn=0 matchpairs= ",
			},
			{
				"FileType",
				"dashboard",
				"set showtabline=0 | autocmd BufLeave <buffer> set showtabline=2",
			},
			{ "FileType", "dashboard", "nnoremap <silent> <buffer> q :q<CR>" },
		},
	})
end

return M
