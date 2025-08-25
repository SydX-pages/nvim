vim.opt.clipboard = "unnamedplus"


vim.opt.number = true
vim.opt.cursorline = true
vim.opt.termguicolors = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.laststatus = 3
vim.opt.showtabline = 2
vim.opt.cmdheight = 0

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

require("config.lazy")


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("keymapping")
