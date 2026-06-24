local k = vim.keymap.set

-- turn off move right
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostics
k("n", "<leader>q", function()
	vim.diagnostic.open_float(nil, {
		focusable = false,
		border = "single",
		source = "if_many",
	})
end, { desc = "show diagnostics under cursor" })

-- Window navigation
k("n", "<leader>h", "<C-w>h", { desc = "focus left window" })
k("n", "<leader>l", "<C-w>l", { desc = "focus right window" })
k("n", "<leader>j", "<C-w>j", { desc = "focus bottom window" })
k("n", "<leader>k", "<C-w>k", { desc = "focus top window" })

k({ "n", "v" }, "d", '"_d', { desc = "delete without yanking" })
k("x", "p", '"_dP', { desc = "paste without yanking replaced text" })
k("x", "P", '"_dP', { desc = "paste without yanking replaced text" })

vim.keymap.set("n", "<leader>/", "gcc", { remap = true, desc = "comment line" })
vim.keymap.set("v", "<leader>/", "gc", { remap = true, desc = "comment block" })

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, { desc = "show docks" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "show refs" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "rename" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "code action" })

-- Typst preview
vim.keymap.set("n", "<leader>ts", function()
	require("typst-preview").start()
end, { desc = "Start Typst preview" })

vim.keymap.set("n", "<leader>tq", function()
	require("typst-preview").stop()
end, { desc = "Stop Typst preview" })

vim.keymap.set("n", "<leader>tn", function()
	require("typst-preview").next_page()
end, { desc = "Next page" })

vim.keymap.set("n", "<leader>tp", function()
	require("typst-preview").prev_page()
end, { desc = "Previous page" })

vim.keymap.set("n", "<leader>tr", function()
	require("typst-preview").refresh()
end, { desc = "Refresh preview" })

vim.keymap.set("n", "<leader>tgg", function()
	require("typst-preview").first_page()
end, { desc = "First page" })

vim.keymap.set("n", "<leader>tG", function()
	require("typst-preview").last_page()
end, { desc = "Last page" })

vim.keymap.set("i", "<leader>r", "<C-^>", { desc = "toggle RU/EN layout" })
