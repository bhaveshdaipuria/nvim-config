return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		local ts = require("nvim-treesitter")

		-- 1. Install your preferred parsers
		ts.install({
			"lua",
			"vimdoc",
			"markdown",
			"vim",
			"html",
			"javascript",
			"typescript",
			"tsx",
			"go",
		})

		-- 2. Configure the parser manager (optional but helpful)
		ts.setup({
			auto_install = true,
		})

		-- 3. THE HIGHLIGHTING FIX
		-- We use an autocmd to trigger native highlighting on every file
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				-- This is the native Neovim function that replaces the old plugin setting
				local ok, _ = pcall(vim.treesitter.start)

				-- Also enables Treesitter-based indentation if highlighting starts
				if ok then
					vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end
			end,
		})
	end,
}
