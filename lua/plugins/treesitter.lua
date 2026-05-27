return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    opts = require "config.treesitter",
    config = function(_, opts)
        local function try_start_treesitter(buf)
            pcall(vim.treesitter.start, buf)
        end

        vim.api.nvim_create_autocmd("FileType", {
            callback = function(args)
                try_start_treesitter(args.buf)
            end,
        })
    end,
}
