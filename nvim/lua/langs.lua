O.lang = {
	cmake = {
		formatter = {
			exe = "clang-format",
			args = {},
		},
	},
	clang = {
		diagnostics = {
			virtual_text = { spacing = 0, prefix = "" },
			signs = true,
			underline = true,
		},
		cross_file_rename = true,
		header_insertion = "never",
		filetypes = { "c", "cpp", "objc" },
		formatter = {
			exe = "clang-format",
			args = {},
		},
	},
	css = {
		virtual_text = true,
	},
	dart = {
		sdk_path = "/usr/lib/dart/bin/snapshots/analysis_server.dart.snapshot",
		formatter = {
			exe = "dart",
			args = { "format" },
		},
	},
	docker = {},
	efm = {},
	elm = {},
	emmet = { active = false },
	elixir = {},
	graphql = {},
	go = {
		formatter = {
			exe = "gofmt",
			args = {},
		},
	},
	html = {},
	java = {
		java_tools = {
			active = false,
		},
		formatter = {
			exe = "prettier",
			args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote" },
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
	kotlin = {},
	latex = {
		auto_save = false,
		ignore_errors = {},
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
	php = {
		format = {
			format = {
				default = "psr12",
			},
		},
		environment = {
			php_version = "7.4",
		},
		diagnostics = {
			virtual_text = { spacing = 0, prefix = "" },
			signs = true,
			underline = true,
		},
		filetypes = { "php", "phtml" },
		formatter = {
			exe = "phpcbf",
			args = { "--standard=PSR12", vim.api.nvim_buf_get_name(0) },
			stdin = false,
		},
	},
	python = {
		-- @usage can be flake8 or yapf
		linter = "flake8",
		isort = false,
		diagnostics = {
			virtual_text = { spacing = 0, prefix = "" },
			signs = true,
			underline = true,
		},
		analysis = {
			type_checking = "basic",
			auto_search_paths = true,
			use_library_code_types = true,
		},
		formatter = {
			exe = "yapf",
			args = {},
		},
	},
	ruby = {
		diagnostics = {
			virtualtext = { spacing = 0, prefix = "" },
			signs = true,
			underline = true,
		},
		filetypes = { "rb", "erb", "rakefile", "ruby" },
		formatter = {
			exe = "rufo",
			args = { "-x" },
		},
	},
	rust = {
		rust_tools = {
			active = false,
			parameter_hints_prefix = "<-",
			other_hints_prefix = "=>", -- prefix for all the other hints (type, chaining)
		},
		-- @usage can be clippy
		formatter = {
			exe = "rustfmt",
			args = { "--emit=stdout", "--edition=2018" },
		},
		linter = "",
		diagnostics = {
			virtual_text = { spacing = 0, prefix = "" },
			signs = true,
			underline = true,
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
	svelte = {},
	tailwindcss = {
		active = true,
		filetypes = {
			"html",
			"css",
			"scss",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
		},
		formatter = {
			exe = "prettier",
			args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote" },
			stdin = false,
		},
	},
	terraform = {
		formatter = {
			exe = "terraform",
			args = { "fmt" },
			stdin = false,
		},
	},
	typescriptreact = {
		-- @usage can be 'eslint' or 'eslint_d'
		linter = "eslint",
		diagnostics = {
			virtual_text = { spacing = 0, prefix = "" },
			signs = true,
			underline = true,
		},
		formatter = {
			exe = "prettier",
			args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote" },
			stdin = false,
		},
	},
	typescript = {
		-- @usage can be 'eslint' or 'eslint_d'
		linter = "eslint",
		diagnostics = {
			virtual_text = { spacing = 0, prefix = "" },
			signs = true,
			underline = true,
		},
		formatter = {
			exe = "prettier",
			args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote" },
			stdin = false,
		},
	},
	tsserver = {
		-- @usage can be 'eslint' or 'eslint_d'
		linter = "eslint",
		autoformat = true,
		diagnostics = {
			virtual_text = { spacing = 0, prefix = "" },
			signs = true,
			underline = true,
		},
		formatter = {
			exe = "prettier",
			args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote" },
			stdin = false,
		},
	},
	vim = {},
	yaml = {
		formatter = {
			exe = "prettier",
			args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote" },
			stdin = false,
		},
	},
}
