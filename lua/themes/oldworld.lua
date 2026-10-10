local M = {}
M.setup = function()
	require("oldworld").setup({
		terminal_colors = true,
		variant = "default",
		styles = {
			comments = {},
			keywords = {},
			identifiers = {},
			functions = {},
			variables = {},
			booleans = {},
		},
		integrations = {
			cmp = true,
			gitsigns = true,
			indent_blankline = true,
			lazy = true,
			lsp = true,
			markdown = true,
			mason = true,
			noice = true,
			treesitter = true,
		},
		highlight_overrides = {
			-- Transparency base & softer bright white text
			Normal = { fg = "#e2e2e6", bg = "NONE" },
			NormalNC = { fg = "#c4c7d0", bg = "NONE" },
			NormalFloat = { bg = "NONE" },
			SignColumn = { bg = "NONE" },
			EndOfBuffer = { fg = "#2e323b", bg = "NONE" },

			-- Subtle discreet border for Oil / popups
			FloatBorder = { fg = "#4a4f5a", bg = "NONE" },
			FloatTitle = { fg = "#7e8594", bg = "NONE" },

			-- Top tabline / bufferline
			TabLine = { bg = "NONE", fg = "#626773" },
			TabLineFill = { bg = "NONE" },
			TabLineSel = { bg = "NONE", fg = "#e2e2e6", bold = true },

			-- Visible slate-gray cursorline
			CursorLine = { bg = "#3d3b3b" },
			-- CursorLineNr = { fg = "#f0f0f4", bg = "#3b404d", bold = true },
		},
	})
end

return M
