vim.g.mapleader = " "
vim.g.maplocalleader = " "

local v = vim.opt

v.number = true
v.relativenumber = true
v.termguicolors = true
v.signcolumn = "yes"
v.scrolloff = 8
v.cursorline = true

v.tabstop = 4
v.shiftwidth = 4
v.expandtab = true
v.smartindent = true

v.clipboard = "unnamedplus"

v.guicursor = "i:block"

v.showmode = false
v.laststatus = 3

vim.o.timeoutlen = 300
