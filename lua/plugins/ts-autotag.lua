return {
	"windwp/nvim-ts-autotag",
	name = "ts-autotag",
	config = function()
		require("nvim-ts-autotag").setup({
			opts = {
				-- Defaults
				enable_close = true, -- Auto close tags
				enable_rename = true, -- Auto rename pairs of tags
				enable_close_on_slash = false, -- Auto close on trailing </
			},
			-- Also override individual filetype configs, these take priority.
			-- Empty by default, useful if one of the "opts" global settings
			-- doesn't work well in a specific filetype
			per_filetype = {
				["html"] = {
					-- This can be omitted to keep global settings
					-- enable_close = false,
				},
			},
		})
	end,
}
