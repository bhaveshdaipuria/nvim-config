return {
	"craftzdog/solarized-osaka.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("solarized-osaka").setup({
			transparent = true,
			lualine_bold = true,
		})
		vim.cmd("set background=dark")
		vim.cmd("colorscheme solarized-osaka")
	end,
}
