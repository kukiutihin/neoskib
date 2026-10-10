-- config for floskell
local floskell_mod = require("config.formatters.floskell")

return {
	formatters_by_ft = {
		lua = { "stylua" },
		-- go = { "goimports", "gofmt" },
		java = { "google-java-format" },
		-- scala = { "scalafmt" },
		-- sql = { "sql_formatter" },
		-- mysql = { "sql_formatter" },
		-- plsql = { "sql_formatter" },
		cpp = { "clang_format" },
		c = { "clang_format" },
		haskell = { "floskell" },
		-- kotlin = { "ktlint" },
		nix = { "nixpkgs_fmt" },
		rust = { "rustfmt" },
	},

	formatters = {
		["google-java-format"] = {
			args = { "--aosp", "-" },
		},

		clang_format = {
			prepend_args = {
				"--style=file",
				"--fallback-style=LLVM",
			},
		},

		floskell = {
			command = "floskell",
			args = { "--config", floskell_mod.config_path },
			stdin = true,
		},
	},

	-- format_on_save = {
	-- 	timeout_ms = 250,
	-- 	lsp_fallback = false,
	-- 	quiet = true,
	-- },

	format_on_save = false,
}
