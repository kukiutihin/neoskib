return {
	{
		"williamboman/mason.nvim",
		config = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"gopls",
					"lua_ls",
					"jdtls",
					"rust_analyzer",
					"clangd",
					"kotlin_lsp",
					"ocamllsp",
				},
				automatic_enable = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "williamboman/mason-lspconfig.nvim" },
		config = function()
			vim.diagnostic.config({
				virtual_text = false,
				signs = true,
				underline = true,
				update_in_insert = true,
				severity_sort = true,
			})

			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
					},
				},
			})

			vim.lsp.config["hls"] = {
				filetypes = { "haskell", "lhaskell", "cabal" },
				settings = {
					haskell = {
						formattingProvider = "none",
					},
				},
			}

			vim.lsp.config("gopls", {
				settings = {
					gopls = {
						analyses = {
							unusedparams = true,
							shadow = true,
						},
						staticcheck = true,
					},
				},
				flags = {
					debounce_text_changes = 150,
				},
			})
			vim.lsp.enable({
				"hls",
			})
		end,
	},
}
