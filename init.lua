require("extensions")
require("options")
require("config.lazy")
require("keymaps")
require("custom_settings")

vim.treesitter.language.add("skibideo_parser_1f", {
	path = "/Users/kukiutihin/projects/ts-1f/tree-sitter-1f/parser.dylib",
})

vim.treesitter.language.register("skibideo_parser_1f", { "1f" })
