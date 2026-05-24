return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup({
            default_file_explorer = true,

            columns = {
                "icon",
                -- Раскомментируйте нужные, если хотите видеть больше информации:
                -- "permissions",
                -- "size",
                -- "mtime",
            },

            view_options = {
                show_hidden = true,
                is_hidden_file = function(name, bufnr)
                    return vim.startswith(name, ".")
                end,
                is_always_hidden = function(name, bufnr)
                    return name == ".."
                end,
            },

            keymaps = {
                ["g?"] = "actions.show_help",
                ["<CR>"] = "actions.select",
                ["-"] = "actions.parent",
                ["_"] = "actions.open_cwd",
                ["`"] = "actions.cd",
                ["~"] = "actions.tcd",
                ["gs"] = "actions.change_sort",
                ["gx"] = "actions.open_external",
                ["g."] = "actions.toggle_hidden",
                ["q"] = "actions.close",
            },

            float = {
                padding = 2,
                max_width = 80,
                max_height = 20,
                border = "rounded",
                win_options = {
                    winblend = 0,
                },
            },
        })

        vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>", { desc = "parent directory" })
        vim.keymap.set("n", "-", require("oil").toggle_float, { desc = "floating" })
    end,
}
