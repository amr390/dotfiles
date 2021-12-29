local status_ok, fterm = pcall(require, "FTerm")
if not status_ok then
	return
end

fterm.setup({
	active = true,
	border = "single", -- or 'double'
})

vim.api.nvim_set_keymap("n", "<A-i>", "<CMD>lua require('FTerm').toggle()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>gg", "<CMD>lua _G.__fterm_lazygit()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"t",
	"<A-i>",
	"<C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>",
	{ noremap = true, silent = true }
)
-- vim.api.nvim_set_keymap("n", "<A-l>", "<CMD>lua _G.__fterm_lazygit()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<A-l>", "<C-\\><C-n><CMD>lua _G.__fterm_lazygit()<CR>", {
	noremap = true,
	silent = true,
})
