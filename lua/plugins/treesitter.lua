return {
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
	opts = {
		ensure_installed = { "lua", "vimdoc", "markdown", "vim", "html", "javascript", "typescript", "tsx" },
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
	},
}
