return {
	"navarasu/onedark.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("onedark").setup({
			style = "darker",

			code_style = {
				comments = "none",
				keywords = "bold",
				functions = "none",
				strings = "none",
				variables = "none",
			},
		})
		require("onedark").load()
	end,
}
