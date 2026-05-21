return {
    "nvim-mini/mini.tabline",
    version = false,
    config = function()
        require("mini.tabline").setup({
            show_icons = true,

            format = function(buf_id, label)
                if vim.bo[buf_id].modified then
                    label = '*' .. label
                end

                return MiniTabline.default_format(buf_id, label)
            end
        })

        vim.keymap.set('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true, desc = "next buf" })
        vim.keymap.set('n', '<S-Tab>', ':bprev<CR>', { noremap = true, silent = true, desc = "prev buf" })

        vim.keymap.set('n', '<leader>x', ':bdelete<CR>', { noremap = true, silent = true, desc = "close buf" })
    end
}
