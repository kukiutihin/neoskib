local M = {}

M.setup = function()
	local gray = "#7c6f64"
	local cursorline_bg = "#45403d"
	local text_soft = "#ebdbb2"
	local orange = "#fe8019"

	local git_add = "#5f6c49"
	local git_change = "#4f656b"
	local git_delete = "#7a4646"

	local visual_bg = "#45403d"

	local highlights = {
		Normal = { fg = text_soft, bg = "none" },
		NormalNC = { fg = text_soft, bg = "none" },

		CursorLine = { bg = cursorline_bg },
		CursorLineNr = { bg = cursorline_bg, fg = orange, bold = true },

		LineNr = { fg = gray, bg = "none" },
		SignColumn = { bg = "none" },
		FoldColumn = { fg = gray, bg = "none" },

		NormalFloat = { fg = text_soft, bg = "none" },
		FloatBorder = { fg = gray, bg = "none" },
		FloatTitle = { fg = gray, bg = "none" },

		WinSeparator = { fg = gray, bg = "none" },
		VertSplit = { fg = gray, bg = "none" },

		WinBar = { bg = "none" },
		WinBarNC = { bg = "none" },

		TabLine = { bg = "none" },
		TabLineFill = { bg = "none" },
		TabLineSel = { bg = "none" },

		Visual = { bg = visual_bg },
		VisualNOS = { bg = visual_bg },

		DropBarIconUISeparator = { bg = "none" },
		DropBarMenuCurrentContext = { bg = "none" },
		DropBarMenuHoverEntry = { bg = "none" },

		BarbecueNormal = { bg = "none" },
		BarbecueFile = { bg = "none" },
		BarbecueDirname = { bg = "none" },
		BarbecueSeparator = { bg = "none" },
		BarbecueModified = { bg = "none" },
		BarbecueNavicEntry = { bg = "none" },

		GitSignsAdd = { fg = git_add, bg = "none" },
		GitSignsChange = { fg = git_change, bg = "none" },
		GitSignsDelete = { fg = git_delete, bg = "none" },
		GitSignsTopdelete = { fg = git_delete, bg = "none" },
		GitSignsChangedelete = { fg = git_change, bg = "none" },

		GitSignsAddNr = { fg = git_add, bg = "none" },
		GitSignsChangeNr = { fg = git_change, bg = "none" },
		GitSignsDeleteNr = { fg = git_delete, bg = "none" },

		GitGutterAdd = { fg = git_add, bg = "none" },
		GitGutterChange = { fg = git_change, bg = "none" },
		GitGutterDelete = { fg = git_delete, bg = "none" },
	}

	local apply = function()
		for group, opts in pairs(highlights) do
			vim.api.nvim_set_hl(0, group, opts)
		end
	end

	apply()

	vim.api.nvim_create_autocmd("ColorScheme", {
		pattern = "*",
		callback = apply,
	})
end

return M
