return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		local opts = { noremap = true, silent = false }
		vim.keymap.set("n", "<space>t", builtin.builtin,
			vim.tbl_extend("error", opts, { desc = "Telescope Builtin" }))
		vim.keymap.set("n", "<leader>ff", builtin.find_files,
			vim.tbl_extend("error", opts, { desc = "Telescope Find Files" }))
		vim.keymap.set("n", "<leader>fb", builtin.buffers,
			vim.tbl_extend("error", opts, { desc = "Telescope Buffers" }))
		vim.keymap.set("n", "<leader>fg", builtin.git_files,
			vim.tbl_extend("error", opts, { desc = "Telescope Git Files" }))
		vim.keymap.set("n", "<leader>fdw", builtin.live_grep,
			vim.tbl_extend("error", opts, { desc = "Telescope Live Grep" }))
		vim.keymap.set("n", "<leader>fbw", builtin.current_buffer_fuzzy_find,
			vim.tbl_extend("error", opts, { desc = "Telescope Current Buffer Fuzzy Find" }))
	end,
}
