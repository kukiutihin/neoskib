local modules = {
	"keymaps.general",
	"keymaps.lsp",
	"keymaps.format",
	"keymaps.typst",
	"keymaps.dap",
}

for _, mod in ipairs(modules) do
	local ok, err = pcall(require, mod)
	if not ok then
		vim.notify("Error loading " .. mod .. ": " .. tostring(err), vim.log.levels.ERROR)
	end
end
