-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ","
vim.g.maplocalleader = "."

-- LazyVim root dir detection
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }

-- Set LSP servers to be ignored for root detection
vim.g.root_lsp_ignore = { "copilot" }

-- Hide deprecation warnings
vim.g.deprecation_warnings = false

-- Dynamically set python3_host_prog based on environment
local home = os.getenv("HOME") or os.getenv("USERPROFILE")
local python_path = home .. "/.local/share/virtualenv/virtualenvs/neovim/bin/python"
if vim.fn.filereadable(python_path) == 1 then
  vim.g["python3_host_prog"] = python_path
else
  local possible_paths = {
    home .. "/.pyenv/versions/neovim/bin/python",
    home .. "/.virtualenvs/neovim/bin/python",
    "/usr/bin/python3",
  }
  for _, path in ipairs(possible_paths) do
    if vim.fn.filereadable(path) == 1 then
      vim.g["python3_host_prog"] = path
      break
    end
  end
end

-- Fix LSP hanging in tmux
if vim.env.TMUX then
  vim.g.lsp_timeout_ms = 3000
end

local options = {
  relativenumber = false, -- No Relative line numbers (User Preference)
  scrolloff = 4, -- Slightly less than LazyVim default of 8
  sidescrolloff = 8,
  spelllang = { "en" },
  wrap = false,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

