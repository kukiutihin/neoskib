local M = {}

function M.setup()
	-- Turn off semantic tokens
	vim.api.nvim_create_autocmd("LspAttach", {
		group = vim.api.nvim_create_augroup("UserLspConfigNoSemantic", { clear = true }),
		callback = function(args)
			local client = vim.lsp.get_client_by_id(args.data.client_id)
			if client and client.server_capabilities then
				client.server_capabilities.semanticTokensProvider = nil
			end
		end,
	})

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

	-- vim.lsp.config("kotlin_language_server", {
	-- 	cmd = { "kotlin-language-server" },
	-- 	init_options = {
	-- 		storagePath = vim.fn.stdpath("cache") .. "/kotlin-language-server",
	-- 	},
	-- })

	-- Default setup for other servers - expect binaries available in PATH (managed by Nix)
	local servers = {
		"lua_ls", -- installed by default
		"clangd",
		"hls",
		"rust_analyzer",
		-- "kotlin_language_server",
		"jdtls",
		"tinymist", -- installed by default
	}

	for _, srv in ipairs(servers) do
		vim.lsp.enable(srv)
	end
end

return M
