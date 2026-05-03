return {
	"navarasu/onedark.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("onedark").setup({
			style = "darker",
			colors = {
				bg0 = "#000000",
			},
			highlights = {
				Normal = { bg = "$bg0" },
				NormalNC = { bg = "$bg0" },
			},
			code_style = {
				comments = "none",
				keywords = "none",
				functions = "none",
				strings = "none",
				variables = "none",
			},
		})
		require("onedark").load()
	end,
}
