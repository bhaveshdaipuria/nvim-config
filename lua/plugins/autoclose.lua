return {
	"m4xshen/autoclose.nvim",
	config = function()
		require("autoclose").setup({
			options = {
				disabled_filetypes = { "text", "markdown" },
				pair_spaces = true,
				auto_indent = true,
				disable_command_mode = true,
			},
		})
	end,
}
