return {
	formatters_by_ft = {
		lua = { "stylua" },
		go = { "goimports", "gofmt" },
		java = { "google-java-format" },
		kotlin = { "ktlint" },
		scala = { "scalafmt" },
		sql = { "sql_formatter" },
		mysql = { "sql_formatter" },
		plsql = { "sql_formatter" },
		cpp = { "clang_format" },
		haskell = { "fourmolu" },
	},
	formatters = {
		["google-java-format"] = {
			args = { "--aosp", "-" },
		},
		clang_format = {
			prepend_args = { "--style=file", "--fallback-style=Google" },
		},
		fourmolu = {
			command = "fourmolu",
			prepend_args = { "--indentation", "2" },
		},
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
		quiet = true,
	},
}
