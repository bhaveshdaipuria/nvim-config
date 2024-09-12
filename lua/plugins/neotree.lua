return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			source_selector = {
				winbar = true,
				statusline = true,
			},
			window = {
				mappings = {
					["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
				},
			},
		})
		vim.cmd("highlight NeotreeNormal guibg=NONE")

		vim.keymap.set("n", "<leader>nn", ":Neotree filesystem reveal left<CR>", { silent = true, noremap = true })
	end,
}
