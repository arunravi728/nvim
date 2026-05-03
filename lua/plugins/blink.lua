return {
	{
		"saghen/blink.cmp",
		event = "VimEnter",
		version = "1.*",
		dependencies = {
			-- Snippet Engine
			{
				"L3MON4D3/LuaSnip",
				version = "2.*",
				build = (function()
					-- Build Step is needed for regex support in snippets.
					return "make install_jsregexp"
				end)(),
				dependencies = {},
				opts = {},
			},
		},
		opts = {
			keymap = {
				preset = "default",
			},

			appearance = {
				nerd_font_variant = "mono",
			},

			completion = {
				documentation = { auto_show = false, auto_show_delay_ms = 500 },
			},

			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},

			snippets = { preset = "luasnip" },

			fuzzy = { implementation = "prefer_rust_with_warning" },

			-- Shows a signature help window while you type arguments for a function
			signature = { enabled = true },
		},
	},
}
