return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				options = {
					mode = "buffers", -- "buffers" for open files, "tabs" for Neovim tabpages
					style_preset = require("bufferline").style_preset.minimal,
					numbers = "none", -- "ordinal", "buffer_id", "both", or a function
					diagnostics = "nvim_lsp", -- Show LSP error/warning indicators

					show_buffer_icons = true,
					show_buffer_close_icons = true,
					show_close_icon = false,
					separator_style = "thin", -- "slant", "thick", "thin", "slope"
				},
				highlights = {
					buffer_selected = {
						italic = false,
						bold = false,
					},
					buffer_visible = {
						italic = false,
						bold = false,
					},
					buffer = {
						italic = false,
						bold = false,
					},
					-- add more to turn off for separators, etc.
				},
			})

			-- Move to the next/previous buffer
			vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next Buffer" })
			vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Prev Buffer" })

			-- Close the current buffer
			vim.keymap.set("n", "<leader>x", "<Cmd>bdelete<CR>", { desc = "Close Buffer" })
		end,
	},
}
