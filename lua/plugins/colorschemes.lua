return {
	{
		"ellisonleao/gruvbox.nvim",

		lazy = false,
		priority = 1000,

		config = function()
			require("themes.gruvbox").setup()
			vim.cmd.colorscheme("gruvbox")
		end,
	},
}
