local k = vim.keymap.set

k({ "n", "v" }, "<leader>fs", function()
	require("conform").format({
		async = false,
		lsp_format = "never",
	})
	vim.cmd("write")
end, { desc = "Format (no LSP) and save buffer" })
