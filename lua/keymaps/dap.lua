local k = vim.keymap.set

-- Defer requires to runtime so Neovim startup stays fast
k("n", "<leader>du", function()
	require("dapui").toggle()
end, { desc = "DAP UI: Toggle" })

k({ "n", "v" }, "<leader>de", function()
	require("dapui").eval()
end, { desc = "DAP UI: Eval" })

k("n", "<leader>dc", function()
	require("dap").continue()
end, { desc = "DAP: Continue" })

k("n", "<leader>bb", function()
	require("dap").toggle_breakpoint()
end, { desc = "DAP: Toggle Breakpoint" })

k("n", "<F10>", function()
	require("dap").step_over()
end, { desc = "DAP: Step Over" })

k("n", "<F11>", function()
	require("dap").step_into()
end, { desc = "DAP: Step Into" })

k("n", "<F12>", function()
	require("dap").step_out()
end, { desc = "DAP: Step Out" })

k("n", "<leader>dq", function()
	require("dap").terminate()
	require("dapui").close()
end, { desc = "DAP: Terminate and Close UI" })
