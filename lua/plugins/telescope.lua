return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		local opts = { buffer = bufnr, noremap = true, silent = true }
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function()
				vim.keymap.set("n", "gd", builtin.lsp_definitions, opts)
				vim.keymap.set("n", "gy", builtin.lsp_type_definitions, opts)
				vim.keymap.set("n", "gi", builtin.lsp_implementations, opts)
				vim.keymap.set("n", "gr", builtin.lsp_references, opts)
				vim.keymap.set("n", "<space>t", builtin.builtin, opts)
				vim.keymap.set("n", "<space>a", builtin.diagnostics, opts)
				vim.keymap.set("n", "<space>s", builtin.lsp_document_symbols, opts)
				vim.keymap.set("n", "<leader>ff", builtin.find_files, opts)
				vim.keymap.set("n", "<leader>fb", builtin.buffers, opts)
				vim.keymap.set("n", "<leader>fg", builtin.git_files, opts)
				vim.keymap.set("n", "<leader>fdw", builtin.live_grep, opts)
				vim.keymap.set("n", "<leader>fbw", builtin.current_buffer_fuzzy_find, opts)
			end,
		})
	end,
}
