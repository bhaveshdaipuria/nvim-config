return {
	"loctvl842/monokai-pro.nvim",
	name = "monokai",
	config = function()
		require("monokai-pro").setup({
			-- transparent_background = true
			terminal_colors = true,
			devicons = true
		})
		vim.cmd("colorscheme monokai-pro-ristretto")
		-- vim.cmd('set background=dark')
	end
}
