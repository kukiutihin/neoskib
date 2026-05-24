return {
    {
        "williamboman/mason.nvim",
        config = true,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "gopls", "lua_ls", "jdtls", "clangd", "kotlin_language_server", "hls", "ocamllsp" },
                automatic_enable = true,
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        config = function()
            vim.diagnostic.config({
                virtual_text = false,
                signs = true,
                underline = true,
                update_in_insert = true,
                severity_sort = true,
            })


            vim.lsp.config['hls'] = {
                filetypes = { "haskell", "lhaskell", "cabal" },
            }

            vim.lsp.config['skibideo'] = {
                cmd = { '/Users/kukiutihin/projects/skibideo/main', '--debug', '--compiler', '/Users/kukiutihin/projects/1F/_build/default/bin/main.exe' },
                filetypes = { '1f' },
                root_markers = { '.git' },

                settings = {
                }

            }

            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                    },
                },
            })

            vim.lsp.config("gopls", {
                settings = {
                    gopls = {
                        analyses = {
                            unusedparams = true,
                            shadow = true,
                        },
                        staticcheck = true,
                    },
                },
                flags = {
                    debounce_text_changes = 150,
                },
            })

            vim.lsp.enable({ "lua_ls", "gopls", "skibideo", "ocamllsp", "hsl", "kotlin_language_server", "jdtls",
                "clangd" })
        end,
    },
}
