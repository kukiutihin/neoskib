return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		picker = {
			enabled = true,
			layout = {
				width = 0.9,
				preset = "ivy",
			},

			win = {
				input = {
					keys = {
						["<Tab>"] = { "list_down", mode = { "i", "n" } },
						["<S-Tab>"] = { "list_up", mode = { "i", "n" } },

						["<C-s>"] = { "select_and_next", mode = { "i", "n" } },
					},
				},
			},
		},
		notifier = { enabled = false },
	},
	keys = {
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>fg",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep",
		},
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Buffers",
		},
		{
			"<leader>fr",
			function()
				Snacks.picker.recent()
			end,
			desc = "Recent",
		},

		{
			"<leader>gc",
			function()
				Snacks.picker.git_commits()
			end,
			desc = "Git Commits",
		},
		{
			"<leader>gs",
			function()
				Snacks.picker.git_status()
			end,
			desc = "Git Status",
		},

		{
			"<leader>fc",
			function()
				Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "Neovim config",
		},
	},
}
