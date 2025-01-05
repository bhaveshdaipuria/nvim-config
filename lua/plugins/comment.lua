return {
	{

		"numToStr/Comment.nvim",
		name = "comment.nvim",
		config = function()
			require("Comment").setup({
				pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			})
		end,
	},
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
		name = "commenting-helper",
		config = function()
			require("ts_context_commentstring").setup({
				-- enable_autocmd = false,
			})
		end,
	},
}
