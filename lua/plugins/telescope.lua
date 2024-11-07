return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "<space>t", builtin.builtin, { desc = "Telescope List" }, opts)
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope Find Files" }, opts)
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope Buffers" }, opts)
		vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Telescope Git Files" }, opts)
		vim.keymap.set("n", "<leader>fdw", builtin.live_grep, { desc = "Telescope Live Grep" }, opts)
		vim.keymap.set("n", "<leader>fbw", builtin.current_buffer_fuzzy_find, { desc = "Telescope Find Word" },
			opts)
	end,
}
