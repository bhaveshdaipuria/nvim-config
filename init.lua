vim.g.mapleader = '`'
vim.g.maplocalleader = ','
require('config.lazy')

-- Basic settings
vim.opt.updatetime = 100
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true
vim.opt.mouse =
vim.cmd("set nrformats+=alpha")
