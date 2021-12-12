local prettier_args = {
	"--config-precedence",
	"prefer-file",
	"--single-quote",
	"--no-bracket-spacing",
	"--prose-wrap",
	"always",
	"--arrow-parens",
	"always",
	"--trailing-comma",
	"all",
	"--no-semi",
	"--end-of-line",
	"lf",
	"--print-width",
	vim.bo.textwidth,
	"--stdin-filepath",
	vim.fn.shellescape(vim.api.nvim_buf_get_name(0)),
}

O.lang = {
	java = {
		java_tools = {
			active = false,
		},
		formatter = {
			exe = "prettier",
			args = prettier_args,
			stdin = true,
		},
	},
	json = {
		diagnostics = {
			virtual_text = { spacing = 0, prefix = "" },
			signs = true,
			underline = true,
		},
		formatter = {
			exe = "python",
			args = { "-m", "json.tool" },
		},
	},
	lua = {
		diagnostics = {
			virtual_text = { spacing = 0, prefix = "" },
			signs = true,
			underline = true,
		},
		formatter = {
			-- https://github.com/JohnnyMorganz/StyLua
			exe = "stylua",
			args = {},
			stdin = false,
		},
	},
	python = {
		-- @usage can be flake8 or yapf
		linter = "flake8",
		isort = true,
		diagnostics = {
			virtual_text = { spacing = 0, prefix = "" },
			signs = true,
			underline = true,
		},
		analysis = {
			type_checking = "strict", -- "basic", "strict"
			auto_search_paths = true,
			use_library_code_types = true,
		},
		formatter = {
			exe = "yapf",
			args = {},
		},
	},
	sh = {
		-- @usage can be 'shellcheck'
		linter = "",
		-- @usage can be 'shfmt'
		diagnostics = {
			virtual_text = { spacing = 0, prefix = "" },
			signs = true,
			underline = true,
		},
		formatter = {
			-- curl -sS https://webinstall.dev/shfmt | bash
			exe = "shfmt",
			args = { "-w" },
			stdin = false,
		},
	},
	tsserver = {
		-- @usage can be 'eslint' or 'eslint_d'
		active = true,
		linter = "eslint",
		autoformat = true,
		diagnostics = {
			virtual_text = { spacing = 0, prefix = "" },
			signs = true,
			underline = true,
		},
		filetypes = {
			"html",
			"css",
			"scss",
			"sass",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
		},
		formatter = {
			exe = "prettier",
			args = prettier_args,
			stdin = true,
		},
	},
	yaml = {
		formatter = {
			exe = "prettier",
			args = prettier_args,
			stdin = true,
		},
	},
}

-- if O.lang.emmet.active then
--   require "lsp.emmet-ls"
-- end

-- if O.lang.tailwindcss.active then
-- 	require("lsp.tailwindcss-ls")
-- end
-- if O.lang.tsserver.active then
-- require("lsp.tsserver-ls")
-- end
