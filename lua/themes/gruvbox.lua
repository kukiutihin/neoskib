local M = {}

M.setup = function()
	require("gruvbox").setup({
		terminal_colors = true,
		transparent_mode = true,

		overrides = {
			FloatBorder = { fg = "#665c54" },
			SnacksPickerBorder = { fg = "#665c54" },

			VertSplit = { fg = "#504945" },
			WinSeparator = { fg = "#504945" },

			TabLineFill = { bg = "NONE" },
			MiniTablineFill = { bg = "NONE" },

			MiniTablineHidden = {
				bg = "NONE",
				fg = "#7c6f64",
			},

			MiniTablineVisible = {
				bg = "NONE",
				fg = "#7c6f64",
			},

			MiniTablineCurrent = {
				bg = "NONE",
				fg = "#fbf1c7",
				bold = true,
			},

			MiniTablineModifiedCurrent = {
				link = "MiniTablineCurrent",
			},

			MiniTablineModifiedVisible = {
				link = "MiniTablineVisible",
			},

			MiniTablineModifiedHidden = {
				link = "MiniTablineHidden",
			},
		},
	})
end

return M
