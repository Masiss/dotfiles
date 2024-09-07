-- bootstrap lazy.nvim, LazyVim and your plugins

vim.g.mapleader=" "
vim.opt.shiftwidth=4
vim.opt.nu=true
vim.opt.relativenumber=true
vim.opt.smartindent=true
vim.opt.wrap=false

require("config.lazy")

vim.cmd("Neotree")
