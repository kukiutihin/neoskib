return {
	"scalameta/nvim-metals",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"mfussenegger/nvim-dap",
			optional = true,
			config = function()
				local dap = require("dap")
				dap.configurations.scala = {
					{
						type = "scala",
						request = "launch",
						name = "Run or Test",
						metals = {
							runType = "runOrTestFile",
						},
					},
					{
						type = "scala",
						request = "launch",
						name = "Test Target",
						metals = {
							runType = "testTarget",
						},
					},
				}
			end,
		},
	},
	ft = { "scala", "sbt" },
	opts = function()
		local metals_config = require("metals").bare_config()

		metals_config.settings = {
			showImplicitArguments = true,
			showInferredType = true,
			excludedPackages = { "akka.actor.typed.javadsl", "com.github.swagger.akka.javadsl" },
		}

		metals_config.init_options.statusBarProvider = "off"

		metals_config.capabilities = require("blink.cmp").get_lsp_capabilities()

		metals_config.on_attach = function(client, bufnr)
			local map = function(keys, func, desc)
				vim.keymap.set("n", keys, func, { buffer = bufnr, desc = "Metals: " .. desc })
			end

			map("gd", function()
				Snacks.picker.lsp_definitions()
			end, "Goto Definition")
			map("gr", function()
				Snacks.picker.lsp_references()
			end, "References")
			map("gi", function()
				Snacks.picker.lsp_implementations()
			end, "Goto Implementation")
			map("<leader>ss", function()
				Snacks.picker.lsp_symbols()
			end, "LSP Symbols")

			map("<leader>k", vim.lsp.buf.hover, "Hover")
			map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
			map("<leader>cr", vim.lsp.buf.rename, "Rename")
			map("<leader>ws", require("metals").hover_worksheet, "Hover Worksheet")
			map("<leader>mc", require("metals").compile_cascade, "Compile Cascade")
		end

		return metals_config
	end,
	config = function(self, metals_config)
		local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
		vim.api.nvim_create_autocmd("FileType", {
			pattern = self.ft,
			callback = function()
				require("metals").initialize_or_attach(metals_config)
			end,
			group = nvim_metals_group,
		})
	end,
}
