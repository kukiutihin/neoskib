return {
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local dap = require("dap")
			require("dap.ext.vscode").type_to_filetypes["lldb"] = { "c", "cpp" }
			local dapui = require("dapui")

			dapui.setup({
				controls = {
					enabled = false,
				},
				layouts = {
					{
						elements = {
							{ id = "console", size = 0.30 },
							{ id = "scopes", size = 0.5 },
							{ id = "repl", size = 0.2 },
						},
						position = "right",
						size = 0.48,
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
