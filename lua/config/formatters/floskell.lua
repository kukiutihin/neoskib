local M = {}

M.config = {
	extensions = {},
	fixities = {},
	formatting = {
		align = {
			case = true,
			class = false,
			["import-module"] = true,
			["import-spec"] = false,
			["let-binds"] = true,
			limits = { 10, 25 },
			matches = false,
			["record-fields"] = true,
			where = true,
		},
		group = {
			default = {
				["force-linebreak"] = false,
				linebreaks = "none",
				spaces = "none",
			},
			["("] = {
				["force-linebreak"] = false,
				linebreaks = "none",
				spaces = "none",
			},
			["["] = {
				["force-linebreak"] = false,
				linebreaks = "none",
				spaces = "none",
			},
			["{"] = {
				["force-linebreak"] = false,
				linebreaks = "after",
				spaces = "both",
			},
		},
		indent = {
			app = "indent-by 2",
			case = "indent-by 2",
			class = "indent-by 2",
			deriving = 2,
			["do"] = "indent-by 2",
			["export-spec-list"] = "indent-by 4",
			["if"] = "align",
			["import-spec-list"] = "align",
			["let"] = "indent-by 2",
			["let-binds"] = "indent-by 2",
			["let-in"] = "indent-by 2",
			["multi-if"] = "indent-by 2",
			onside = 2,
			typesig = "align",
			where = 2,
			["where-binds"] = "indent-by 2",
		},
		layout = {
			app = "try-oneline",
			["con-decls"] = "vertical",
			declaration = "flex",
			["export-spec-list"] = "try-oneline",
			["if"] = "vertical",
			["import-spec-list"] = "flex",
			["infix-app"] = "try-oneline",
			["let"] = "vertical",
			["list-comp"] = "try-oneline",
			record = "vertical",
			type = "try-oneline",
		},
		op = {
			[","] = {
				["force-linebreak"] = false,
				linebreaks = "none",
				spaces = "after",
			},
			[". in type"] = {
				["force-linebreak"] = false,
				linebreaks = "after",
				spaces = "after",
			},
			[":"] = {
				["force-linebreak"] = false,
				linebreaks = "none",
				spaces = "both",
			},
			["="] = {
				["force-linebreak"] = false,
				linebreaks = "after",
				spaces = "both",
			},
			default = {
				["force-linebreak"] = false,
				linebreaks = "before",
				spaces = "both",
			},
			record = {
				["force-linebreak"] = false,
				linebreaks = "none",
				spaces = "after",
			},
		},
		options = {
			["align-let-binds-and-in-expr"] = false,
			["align-sum-type-decl"] = false,
			["decl-no-blank-lines"] = {},
			["flexible-oneline"] = false,
			["preserve-vertical-space"] = true,
			["sort-import-lists"] = false,
			["sort-imports"] = false,
			["sort-pragmas"] = false,
			["split-language-pragmas"] = false,
		},
		penalty = {
			indent = 1,
			linebreak = 100,
			["max-line-length"] = 100,
			overfull = 10,
			["overfull-once"] = 200,
		},
	},
	language = "Haskell2010",
	style = "gibiansky",
}

local cache_dir = vim.fn.stdpath("cache")
local path = cache_dir .. "/floskell.json"
local f = io.open(path, "w")
if f then
	f:write(vim.fn.json_encode(M.config))
	f:close()
end

M.config_path = path

return M
