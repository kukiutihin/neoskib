local default_handler = vim.lsp.handlers["window/showMessage"]

vim.lsp.handlers["window/showMessage"] = function(err, result, ctx, config)
	if result and result.message then
		local ignored_messages = {
			"formatting",
			"syntax",
			"parse error",
		}

		for _, msg in ipairs(ignored_messages) do
			if result.message:lower():match(msg) then
				return
			end
		end
	end

	default_handler(err, result, ctx, config)
end
