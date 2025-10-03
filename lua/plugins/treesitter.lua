return {
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
	config = function()
		require('nvim-treesitter.configs').setup({
			ensure_installed = { "lua", "vimdoc", "markdown", "vim", "html", "javascript", "typescript", "tsx", "go" },
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
		})
	end
}
