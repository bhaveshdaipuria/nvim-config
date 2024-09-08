return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			background = {
				light = "latte",
				dark = "mocha",
			},
      no_italic = false,
			transparent_background = true,
		})
		vim.cmd("colorscheme catppuccin")
	end,
}
