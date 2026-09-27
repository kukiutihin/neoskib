return {
	{
		"ellisonleao/gruvbox.nvim",

		-- "everviolet/nvim",
		-- name = "evergarden",

		-- "rebelot/kanagawa.nvim",

		lazy = false,
		priority = 1000,

		config = function()
			-- require("themes.gruvbox").setup()
			-- vim.cmd.colorscheme("gruvbox")

			-- require("themes.kanagawa").setup()
			-- vim.cmd.colorscheme("kanagawa-wave")

			require("themes.retrobox").setup()
			vim.cmd.colorscheme("retrobox")

			-- require("themes.evergarden").setup()
			-- vim.cmd.colorscheme("evergarden")
		end,
	},
}
