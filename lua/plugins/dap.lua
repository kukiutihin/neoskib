return {
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			dapui.setup({
				controls = {
					enabled = false,
				},
				layouts = {
					{
						elements = {
							{ id = "stacks", size = 0.25 },
							{ id = "scopes", size = 0.75 },
						},
						position = "right",
						size = 0.48,
					},
					{
						elements = {
							{ id = "repl", size = 1.0 },
						},
						position = "bottom",
						size = 12,
					},
				},
			})
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end
		end,
	},
}
