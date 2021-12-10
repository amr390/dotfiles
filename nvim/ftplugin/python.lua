O.formatters.filetype["python"] = {
	function()
		return {
			exe = O.lang.python.formatter.exe,
			args = O.lang.python.formatter.args,
			stdin = not (O.lang.python.formatter.stdin ~= nil),
		}
	end,
}

require("formatter.config").set_defaults({
	logging = false,
	filetype = O.formatters.filetype,
})

local python_arguments = {}

local flake8 = {
	LintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
	lintStdin = true,
	lintFormats = { "%f:%l:%c: %m" },
}

local isort = { formatCommand = "isort --quiet -", formatStdin = true }

if O.lang.python.linter == "flake8" then
	table.insert(python_arguments, flake8)
end

if O.lang.python.isort then
	table.insert(python_arguments, isort)
end

if not require("utils").check_lsp_client_active("efm") then
	print("ftplugin/python.lua setting up efm")
	require("lspconfig").efm.setup({
		-- init_options = {initializationOptions},
		cmd = { DATA_PATH .. "/lsp_servers/efm/efm-langserver" },
		init_options = { documentFormatting = true, codeAction = false },
		root_dir = require("lspconfig").util.root_pattern(".git/", "requirements.txt"),
		filetypes = { "python" },
		settings = {
			rootMarkers = { ".git/", "requirements.txt" },
			languages = {
				python = python_arguments,
			},
		},
	})
end

if not require("utils").check_lsp_client_active("pyright") then
	-- npm i -g pyright
	print("ftplugin/python.lua setting up pyright")
	require("lspconfig").pyright.setup({
		cmd = {
			DATA_PATH .. "/lsp_servers/python/node_modules/.bin/pyright-langserver",
			"--stdio",
		},
		on_attach = require("lsp").common_on_attach,
		handlers = {
			["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
				virtual_text = O.lang.python.diagnostics.virtual_text,
				signs = O.lang.python.diagnostics.signs,
				underline = O.lang.python.diagnostics.underline,
				update_in_insert = true,
			}),
		},
		settings = {
			python = {
				analysis = {
					typeCheckingMode = O.lang.python.analysis.type_checking,
					autoSearchPaths = O.lang.python.analysis.auto_search_paths,
					useLibraryCodeForTypes = O.lang.python.analysis.use_library_code_types,
				},
			},
		},
	})
end
