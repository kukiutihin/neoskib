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

-- ssh clipboard
vim.g.clipboard = {
	name = "OSC 52",
	copy = {
		["+"] = require("vim.ui.clipboard.osc52").copy("+"),
		["*"] = require("vim.ui.clipboard.osc52").copy("*"),
	},
	paste = {
		["+"] = require("vim.ui.clipboard.osc52").paste("+"),
		["*"] = require("vim.ui.clipboard.osc52").paste("*"),
	},
}

v.guicursor = "i:block"

v.showmode = false
v.laststatus = 3

vim.o.timeoutlen = 300
