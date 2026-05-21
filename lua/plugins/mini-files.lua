return {
    "nvim-mini/mini.files",
    version = false,
    config = function()
        local minifiles = require("mini.files")

        minifiles.setup({
            windows = {
                preview = true,
                width_focus = 30,
                width_preview = 80,
            },
        })

        vim.keymap.set('n', '<leader>e', function()
            if not minifiles.close() then
                minifiles.open(vim.api.nvim_buf_get_name(0))
            end
        end, { desc = "Toggle mini.files" })
    end
}
