return { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", opts = {
  ensure_installed = { "lua", "vimdoc",  "markdown" },
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  }
 }
}
