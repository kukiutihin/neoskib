return {
	"echasnovski/mini.bufremove",
	version = "*",
	config = function()
		local bufremove = require("mini.bufremove")
		bufremove.setup()
	end,
}
