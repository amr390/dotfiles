local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

local status_ok, m_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
	return
end


local status_ok, handlers = pcall(require, "spoonies.lsp.handlers")
if not status_ok then
	return
end

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})


m_lspconfig.setup({
  ensure_installed = {
    "eslint", 
    "tsserver",
    "jsonls",
    "html",
    "sumneko_lua",
    "tailwindcss"
  }
})

local lsp_defaults = {
  flags = {
    debounce_text_changes = 150,
  },
  capabilities = handlers.capabilities,
  on_attach = handlers.on_attach,
}

local lspconfig = require('lspconfig')

lspconfig.util.default_config = vim.tbl_deep_extend(
  'force',
  lspconfig.util.default_config,
  lsp_defaults
)

lspconfig.tsserver.setup({})
lspconfig.eslint.setup({})
-- lspconfig.pyright.setup({})

-- the above is enough, but if you want to replicate the "on_server_ready" behaviour
-- where your installed servers are setup "automatically" you can do the following
require("mason-lspconfig").setup_handlers {
    -- default handler - setup with default settings
    function (server_name)
        lspconfig[server_name].setup {}
    end,
   -- you can override the default handler by providing custom handlers per server
   --[[ ["jdtls"] = function () ]]
   --[[     do something with the nvim-jdtls plugin instead ]]
   --[[ end ]]
}

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
--[[ mason.on_server_ready(function(server) ]]
--[[ 	local opts = { ]]
--[[ 		on_attach = require("spoonies.lsp.handlers").on_attach, ]]
--[[ 		capabilities = require("spoonies.lsp.handlers").capabilities, ]]
--[[ 	} ]]
--[[]]
--[[ 	if server.name == "jsonls" then ]]
--[[ 		local jsonls_opts = require("spoonies.lsp.settings.jsonls") ]]
--[[ 		opts = vim.tbl_deep_extend("force", jsonls_opts, opts) ]]
--[[ 	end ]]
--[[]]
--[[ 	if server.name == "sumneko_lua" then ]]
--[[ 		local sumneko_opts = require("spoonies.lsp.settings.sumneko_lua") ]]
--[[ 		opts = vim.tbl_deep_extend("force", sumneko_opts, opts) ]]
--[[ 	end ]]
--[[]]
--[[ 	-- This setup() function is exactly the same as lspconfig's setup function. ]]
--[[ 	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md ]]
--[[ 	server:setup(opts) ]]
--[[ end) ]]
