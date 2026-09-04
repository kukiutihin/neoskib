-- config for floskell
local floskell_mod = require("config.formatters.floskell")

return {
	formatters_by_ft = {
		lua = { "stylua" },
		go = { "goimports", "gofmt" },
		java = { "google-java-format" },
		kotlin = { "ktlint" },
		-- scala = { "scalafmt" },
		sql = { "sql_formatter" },
		mysql = { "sql_formatter" },
		plsql = { "sql_formatter" },
		cpp = { "clang_format" },
		haskell = { "floskell" },
	},
	formatters = {

		["google-java-format"] = {
			args = { "--aosp", "-" },
		},

		clang_format = {
			prepend_args = { "--style=file", "--fallback-style=Google" },
		},

		floskell = {
			command = "floskell",
			args = { "--config", floskell_mod.config_path },
			stdin = true,
		},
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
		quiet = true,
	},
}
