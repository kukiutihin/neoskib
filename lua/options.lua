vim.g.mapleader = " "
vim.g.maplocalleader = " "

local v = vim.opt

v.number = true
v.relativenumber = true
v.termguicolors = true
v.signcolumn = "yes"
v.scrolloff = 8
v.cursorline = true

v.tabstop = 2
v.shiftwidth = 2
vim.opt_local.softtabstop = 2
v.expandtab = true
v.smartindent = true

v.clipboard = "unnamedplus"

v.guicursor = "i:block"

v.showmode = false
v.laststatus = 3

vim.o.timeoutlen = 300
