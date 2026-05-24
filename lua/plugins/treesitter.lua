return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local ok, configs = pcall(require, "nvim-treesitter.configs")
        if not ok then
            vim.notify("nvim-treesitter.configs not available yet", vim.log.levels.WARN)
            return
        end
        configs.setup({
            ensure_installed = {
                "lua",
                "vim",
                "vimdoc",
                "go",
                "haskell",
                "cpp",
                "java",
                "gomod",
                "gosum",
                "gowork",
                "gotmpl",
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
        })
    end,
}
