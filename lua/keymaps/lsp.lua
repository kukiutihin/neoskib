local k = vim.keymap.set

-- Diagnostics
k("n", "<leader>q", function()
	vim.diagnostic.open_float(nil, {
		focusable = false,
		border = "single",
		source = "if_many",
	})
end, { desc = "Show diagnostics under cursor" })

-- LSP Navigation & Actions
k("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
k("n", "<leader>k", vim.lsp.buf.hover, { desc = "Show hover docs" })
k("n", "gr", vim.lsp.buf.references, { desc = "Show references" })
k("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
k({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
