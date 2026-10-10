local k = vim.keymap.set

k("n", "<leader>ts", function()
	require("typst-preview").start()
end, { desc = "Start Typst preview" })

k("n", "<leader>tq", function()
	require("typst-preview").stop()
end, { desc = "Stop Typst preview" })

k("n", "<leader>tn", function()
	require("typst-preview").next_page()
end, { desc = "Next page" })

k("n", "<leader>tp", function()
	require("typst-preview").prev_page()
end, { desc = "Previous page" })

k("n", "<leader>tr", function()
	require("typst-preview").refresh()
end, { desc = "Refresh preview" })

k("n", "<leader>tgg", function()
	require("typst-preview").first_page()
end, { desc = "First page" })

k("n", "<leader>tG", function()
	require("typst-preview").last_page()
end, { desc = "Last page" })
