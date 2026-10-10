return {
	{
		-- "ellisonleao/gruvbox.nvim",
    "dgox16/oldworld.nvim",

		lazy = false,
		priority = 1000,

		config = function()
			-- require("themes.gruvbox").setup()
			-- vim.cmd.colorscheme("gruvbox")

			-- require("themes.retrobox").setup()
			-- vim.cmd.colorscheme("retrobox")
			
			require("themes.oldworld").setup()
			vim.cmd.colorscheme("oldworld")

		end,
	},
}
