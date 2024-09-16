-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ","
vim.g.maplocalleader = "."

vim.opt.shortmess:append({ W = true, I = true, c = true, C = true })
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

vim.g["python3_host_prog"] = "$HOME/.local/share/virtualenv/virtualenvs/neovim/bin/python" -- python3 custom virtualenv

local options = {
  autowrite = true, -- Enable auto write
  clipboard = "unnamedplus", -- Sync with system clipboard
  completeopt = "menu,menuone,noselect",
  conceallevel = 3, -- Hide * markup for bold and italic
  confirm = true, -- Confirm to save changes before exiting modified buffer
  cursorline = true, -- Enable highlighting of the current line
  expandtab = true, -- Use spaces instead of tabs
  formatoptions = "jcroqlnt", -- tcqj
  grepformat = "%f:%l:%c:%m",
  grepprg = "rg --vimgrep",
  ignorecase = true, -- Ignore case
  inccommand = "nosplit", -- preview incremental substitute
  laststatus = 3, -- global statusline
  list = true, -- Show some invisible characters (tabs...
  mouse = "a", -- Enable mouse mode
  number = true, -- Print line number
  pumblend = 10, -- Popup blend
  pumheight = 10, -- Maximum number of entries in a popup
  relativenumber = false, -- No Relative line numbers
  scrolloff = 4, -- Lines of context
  sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" },
  shiftround = true, -- Round indent
  shiftwidth = 2, -- Size of an indent
  showmode = false, -- Dont show mode since we have a statusline
  sidescrolloff = 8, -- Columns of context
  signcolumn = "yes", -- Always show the signcolumn, otherwise it would shift the text each time
  smartcase = true, -- Don't ignore case with capitals
  smartindent = true, -- Insert indents automatically
  spelllang = { "en" },
  splitbelow = true, -- Put new windows below current
  splitkeep = "screen",
  splitright = true, -- Put new windows right of current
  tabstop = 2, -- Number of spaces tabs count for
  termguicolors = true, -- True color support
  timeoutlen = 300,
  undofile = true,
  undolevels = 10000,
  updatetime = 200, -- Save swap file and trigger CursorHold
  virtualedit = "block", -- Allow cursor to move where there is no text in visual block mode
  wildmode = "longest:full,full", -- Command-line completion mode
  winminwidth = 5, -- Minimum window width
  wrap = false, -- Disable line wrap
  fillchars = {
    foldopen = "",
    foldclose = "",
    -- fold = "⸱",
    fold = " ",
    foldsep = " ",
    diff = "╱",
    eob = " ",
  },
}
--
-- local options = {
--   autowrite = true, -- Enable autowrite
--   backup = false, -- creates a backup file
--   clipboard = "unnamedplus", -- allows neovim to access the system clipboard
--   cmdheight = 2, -- more space in the neovim command line for displaying messages
--   completeopt = { "menu", "menuone", "noselect" }, -- mostly just for cmp
--   conceallevel = 0, -- so that `` is visible in markdown files
--   fileencoding = "utf-8", -- the encoding written to a file
--   hlsearch = true, -- highlight all matches on previous search pattern
--   ignorecase = true, -- ignore case in search patterns
--   mouse = "a", -- allow the mouse to be used in neovim
--   pumheight = 10, -- pop up menu height
--   showmode = false, -- we don't need to see things like -- INSERT -- anymore
--   showtabline = 2, -- always show tabs
--   smartcase = true, -- smart case
--   smartindent = true, -- make indenting smarter again
--   splitbelow = true, -- force all horizontal splits to go below current window
--   splitright = true, -- force all vertical splits to go to the right of current window
--   swapfile = false, -- creates a swapfile
--   -- termguicolors = true,                    -- set term gui colors (most terminals support this)
--   timeoutlen = 100, -- time to wait for a mapped sequence to complete (in milliseconds)
--   undofile = true, -- enable persistent undo
--   updatetime = 300, -- faster completion (4000ms default)
--   writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
--   expandtab = true, -- convert tabs to spaces
--   shiftwidth = 2, -- the number of spaces inserted for each indentation
--   tabstop = 2, -- insert 2 spaces for a tab
--   cursorline = true, -- highlight the current line
--   number = true, -- set numbered lines
--   relativenumber = false, -- set relative numbered lines
--   numberwidth = 4, -- set number column width to 2 {default 4}
--   signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
--   wrap = false, -- display lines as one long line
--   scrolloff = 8, -- is one of my fav
--   sidescrolloff = 8,
-- }

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])
vim.cmd([[set formatoptions-=cro]]) -- TODO: this doesn't seem to work
