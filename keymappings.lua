-- Mappings for buffers
local opts = { silent = true, noremap = true }
vim.keymap.set("n", "<leader><Right>", "<cmd>bnext<CR>", opts)
vim.keymap.set("n", "<leader><Right>", "<cmd>bnext<CR>", opts)
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
