return {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
        require("blink.cmp").setup({
            keymap = {
                preset = "default",
                ["<CR>"] = { "accept", "fallback" },
                ["<Tab>"] = { "select_next", "fallback" },
                ["<S-Tab>"] = { "select_prev", "fallback" },
            },
            completion = {
                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 200,
                    window = {
                        border = "single",
                    },
                },
            },
            appearance = {
                use_nvim_cmp_as_default = true,
            },
            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
            },
        })

        -- Make documentation window border visible
        vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { fg = "#5f5f5f", bg = "NONE" })
    end,
}
