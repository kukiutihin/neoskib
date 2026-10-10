return {
	{
		"ellisonleao/gruvbox.nvim",
    "slugbyte/lackluster.nvim",

		lazy = false,
		priority = 1000,

		config = function()
			-- require("themes.gruvbox").setup()
			-- vim.cmd.colorscheme("gruvbox")

			require("themes.retrobox").setup()
			vim.cmd.colorscheme("retrobox")
		end,
	},
}
