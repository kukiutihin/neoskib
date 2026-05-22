return {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
        open_mapping = [[<c-`>]],
        direction = 'float',
        float_opts = {
            border = 'curved',
        },
        highlights = {
            FloatBorder = {
                guifg = "#665c54",
                guibg = "NONE",
            },
        },
    }
}
