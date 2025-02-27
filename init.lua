vim.g.mapleader = "`"
vim.g.maplocalleader = ","
vim.opt.termguicolors = true
require("config.lazy")

local opts = { silent = true, noremap = true }
-- Mappings for buffers
vim.keymap.set("n", "<leader><Right>", "<cmd>bnext<CR>", opts)
vim.keymap.set("n", "<leader><Left>", "<cmd>bprevious<CR>", opts)
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", opts)
vim.keymap.set("n", "<leader>ebt", "<cmd>tab ball<CR>", opts)
vim.keymap.set("n", "<leader>ebv", "<cmd>vertical ball<CR>", opts)

-- General Mappings
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Mappings for windows/splits
vim.keymap.set("n", "<leader>1<Left>", "<C-W><Left>", opts)
vim.keymap.set("n", "<leader>1<Right>", "<C-W><Right>", opts)
vim.keymap.set("n", "<leader>1<Up>", "<C-W><Up>", opts)
vim.keymap.set("n", "<leader>1<Down>", "<C-W><Down>", opts)
vim.keymap.set("n", "<leader>1wx", "<C-W>x", opts)
vim.keymap.set("n", "<leader>1ws", "<cmd>split<CR>", opts)
vim.keymap.set("n", "<leader>1wv", "<cmd>vsplit<CR>", opts)
vim.keymap.set("n", "<leader>1wq", "<cmd>close<CR>", opts)

-- Mappings for tabs
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", opts)
vim.keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", opts)
vim.keymap.set("n", "<leader>to", "<cmd>tabonly<CR>", opts)

-- Mappings for quickfix list
vim.keymap.set("n", "<leader>qq", "<cmd>copen<CR>", opts)
vim.keymap.set("n", "<C-Right>", "<cmd>cnext<CR>", opts)
vim.keymap.set("n", "<C-q>", "<cmd>cexpr []<CR>", opts)
vim.keymap.set("n", "<C-Left>", "<cmd>cprev<CR>", opts)
vim.keymap.set("n", "<leader>qc", "<cmd>cclose<CR>", opts)

-- Mappings for local list
vim.keymap.set("n", "<leader>ll", "<cmd>lopen<CR>", opts)
vim.keymap.set("n", "<M-Right>", "<cmd>lnext<CR>", opts)
vim.keymap.set("n", "<M-q>", "<cmd>lexpr []<CR>", opts)
vim.keymap.set("n", "<M-Left>", "<cmd>lprev<CR>", opts)
vim.keymap.set("n", "<leader>lc", "<cmd>lclose<CR>", opts)

-- Mappings for arguements list
vim.keymap.set("n", "<C-M-Right>", "<cmd>next<CR>", opts)
vim.keymap.set("n", "<C-M-Left>", "<cmd>prev<CR>", opts)

-- Mappings for copilot
vim.keymap.set("n", "cct", function()
	vim.cmd("CopilotChatToggle")
	vim.cmd("vertical resize 50")
end, opts)
vim.keymap.set("n", "ccs", ":CopilotChatStop<CR>", opts)
vim.keymap.set("n", "ccd", ":CopilotChatReset<CR>", opts)
vim.keymap.set("n", "<leader>ce", ":Copilot enable<CR>", opts)
vim.keymap.set("n", "<leader>cd", ":Copilot disable<CR>", opts)

-- Basic settings
vim.opt.updatetime = 100
vim.opt.number = true
vim.opt.mouse = "a"
vim.opt.relativenumber = true
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true
vim.cmd("set nrformats+=alpha")

vim.api.nvim_create_user_command("RunNode", function()
	vim.cmd("!node %")
end, {})

vim.api.nvim_create_user_command("TsNode", function()
	vim.cmd("!ts-node %")
end, {})
