return {
	"barrett-ruth/live-server.nvim",
	name = "live-server",
	build = "pnpm add -g live-server",
	cmd = { "LiveServerStart", "LiveServerStop" },
	config = function()
		require("live-server").setup(opts)
	end,
}
