local M = {}

function M.setup()
	vim.diagnostic.config({
		virtual_text = false,
		signs = true,
		underline = true,
		update_in_insert = true,
		severity_sort = true,
	})

	-- Lua LSP (installed by default)
	vim.lsp.config("lua_ls", {
		settings = {
			Lua = {
				diagnostics = { globals = { "vim" } },
			},
		},
	})

	-- Haskell LSP
	vim.lsp.config("hls", {
		filetypes = { "haskell", "lhaskell", "cabal" },
		settings = {
			haskell = {
				formattingProvider = "none",
				cabalFormattingProvider = "none",
			},
		},
	})

	-- Rust Analyzer
	vim.lsp.config("rust-analyzer", {
		settings = {
			["rust-analyzer"] = {
				cargo = {
					buildScripts = { enable = true },
					extraEnv = {
						RUSTFLAGS = "--codegen force-frame-pointers=yes "
							.. "--codegen relocation-model=dynamic-no-pic "
							.. "--codegen debuginfo=full",
					},
				},
				check = {
					workspace = false,
				},
				diagnostics = {
					enable = false,
				},
				inlayHints = {
					enable = false,
				},
			},
		},
	})

	-- Clangd (C / C++)
	vim.lsp.config("clangd", {
		on_init = function(client)
			client.server_capabilities.documentFormattingProvider = false
			client.server_capabilities.documentRangeFormattingProvider = false
		end,
	})

	-- Golang
	-- vim.lsp.config("gopls", {
	-- 	settings = {
	-- 		gopls = {
	-- 			analyses = {
	-- 				unusedparams = true,
	-- 				shadow = true,
	-- 			},
	-- 			staticcheck = true,
	-- 		},
	-- 	},
	-- 	flags = {
	-- 		debounce_text_changes = 150,
	-- 	},
	-- })

	-- Default setup for other servers - expect binaries available in PATH (managed by Nix)
	local servers = {
		-- "jdtls",
		"lua_ls", -- installed by default
		-- "gopls",
		"clangd",
		"hls",
		"rust_analyzer",
		-- "kotlin_language_server",
		-- "ocamllsp",
		"tinymist", -- installed by default
	}

	for _, srv in ipairs(servers) do
		vim.lsp.enable(srv)
	end
end

return M
