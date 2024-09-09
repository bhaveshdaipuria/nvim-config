vim.g.mapleader = "`"
vim.g.maplocalleader = ","
vim.opt.termguicolors = true
require("config.lazy")

-- Basic settings
vim.opt.updatetime = 100
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true
vim.opt.mouse = vim.cmd("set nrformats+=alpha")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.api.nvim_create_autocmd("VimEnter", {
	pattern = "*",
	callback = function()
		vim.cmd("Neotree filesystem reveal left")
	end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.lsp.buf.format()
	end,
})

vim.api.nvim_create_user_command("RunNode", function()
	vim.cmd("!node %")
end, {})

vim.api.nvim_create_user_command("TsNode", function()
	vim.cmd("!ts-node %")
end, {})
