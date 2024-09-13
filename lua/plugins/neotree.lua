return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.cmd("highlight NeotreeNormal guibg=NONE")
		vim.cmd("highlight NeotreeNormalNC guibg=NONE")

		vim.keymap.set("n", "<leader>nn", ":Neotree filesystem reveal left<CR>", { silent = true, noremap = true })
		vim.keymap.set("n", "<leader>ng", ":Neotree git_status<CR>", { silent = true, noremap = true })
		vim.keymap.set("n", "<leader>nb", ":Neotree buffers<CR>", { silent = true, noremap = true })
	end,
}
