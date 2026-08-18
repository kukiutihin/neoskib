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

	-- Golang
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

	-- Default setup for other servers - expect binaries available in PATH (managed by Nix)
	local servers = {
		"jdtls",
		"rust_analyzer",
		"clangd",
		"kotlin_language_server",
		"ocamllsp",
		"tinymist", -- installed by default
	}
	for _, srv in ipairs(servers) do
		pcall(function()
			vim.lsp.config(srv, {})
		end)
	end
end

return M
