return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "goimports", "gofmt" },
			java = { "google-java-format" },
			kotlin = { "ktlint" },
			cpp = { "clang_format" },
			haskell = { "ormolu" },
		},
		formatters = {
			["google-java-format"] = {
				args = { "--aosp", "-" },
			},
			clang_format = {
				prepend_args = { "--style=file", "--fallback-style=Google" },
			},
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
			quiet = true,
		},
	},
}
