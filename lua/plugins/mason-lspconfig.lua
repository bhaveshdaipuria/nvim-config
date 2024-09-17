return {
	{
		"williamboman/mason.nvim",
		name = "mason",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		name = "mason-lsp",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		name = "nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = false
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			local opts = { buffer = 0, noremap = true, silent = true }
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function()
					vim.keymap.set("n", "[g", vim.diagnostic.goto_prev, opts)
					vim.keymap.set("n", "]g", vim.diagnostic.goto_next, opts)
					vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
					vim.keymap.set("n", "<leader>qf", vim.lsp.buf.code_action, opts)
				end,
			})
		end,
	},
}
