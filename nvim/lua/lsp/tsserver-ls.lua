local M = {}

local buf_map = function(bufnr, mode, lhs, rhs, opts)
	vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts or {
		silent = true,
	})
end

M.tsserver_on_attach = function(client, bufnr)
	-- lsp_config.common_on_attach(client, bufnr)
	client.resolved_capabilities.document_formatting = false
	client.resolved_capabilities.document_range_formatting = false

	-- Call Formatter manually until we get the on_save from formatter
	buf_map(bufnr, "n", "gF", ":silent %!prettier --stdin-filepath %<CR>")

	local ts_utils = require("nvim-lsp-ts-utils")
	-- defaults
	ts_utils.setup({
		debug = false,
		disable_commands = false,
		enable_import_on_completion = false,
		import_all_timeout = 5000, -- ms

		-- eslint
		eslint_enable_code_actions = true,
		eslint_enable_disable_comments = true,
		eslint_bin = O.lang.tsserver.linter,
		eslint_config_fallback = nil,
		eslint_enable_diagnostics = true,

		-- formatting
		enable_formatting = O.lang.tsserver.autoformat,
		formatter = O.lang.tsserver.formatter.exe,
		formatter_config_fallback = nil,

		-- parentheses completion
		complete_parens = false,
		signature_help_in_parens = false,

		-- update imports on file move
		update_imports_on_move = false,
		require_confirmation_on_move = false,
		watch_dir = nil,
	})

	-- required to fix code action ranges
	ts_utils.setup_client(client)

	-- TODO: keymap these?
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", ":TSLspOrganize<CR>", { silent = true })
	vim.api.nvim_buf_set_keymap(bufnr, "n", "qq", ":TSLspFixCurrent<CR>", { silent = true })
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", ":TSLspRenameFile<CR>", { silent = true })
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", ":TSLspImportAll<CR>", { silent = true })
end

if require("utils").check_lsp_client_active("tsserver") then
	return
end

require("lspconfig").tsserver.setup({
	cmd = {
		DATA_PATH .. "/lsp_servers/tsserver/node_modules/.bin/typescript-language-server",
		"--stdio",
	},
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
	},
	on_attach = M.tsserver_on_attach,
	-- This makes sure tsserver is not used for formatting (I prefer prettier)
	-- on_attach = require'lsp'.common_on_attach,
	root_dir = require("lspconfig/util").root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
	settings = { documentFormatting = true },
	handlers = {
		["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
			virtual_text = O.lang.tsserver.diagnostics.virtual_text,
			signs = O.lang.tsserver.diagnostics.signs,
			underline = O.lang.tsserver.diagnostics.underline,
			update_in_insert = true,
		}),
	},
})
require("lsp.ts-fmt-lint").setup()
