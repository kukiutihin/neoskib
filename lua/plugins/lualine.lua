-- lua/plugins/lualine.lua

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local theme = require("lualine.themes.gruvbox")
		local modes = { "normal", "insert", "visual", "replace", "command", "inactive" }
		for _, mode in ipairs(modes) do
			local section = theme[mode]
			if section then
				for _, key in ipairs({ "b", "c", "x", "y", "z" }) do
					if section[key] then
						section[key].bg = "NONE"
					end
				end
			end
		end

		require("lualine").setup({
			options = {
				theme = theme,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = { "oil" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "filename" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {
					{
						"diagnostics",
						diagnostics_color = {
							error = { bg = "NONE" },
							warn = { bg = "NONE" },
							info = { bg = "NONE" },
							hint = { bg = "NONE" },
						},
					},
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})

		vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE" })
	end,
}
