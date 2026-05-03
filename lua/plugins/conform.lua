return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>ft",
				function()
					require("conform").format({ async = true })
				end,
				mode = "",
				desc = "[F]ormat buffer",
			},
		},
		opts = {
			notify_on_error = false,
			format_on_save = function(bufnr)
				-- You can specify filetypes to autoformat on save here:
				local enabled_filetypes = {
					lua = true,
					python = true,
					rust = true,
				}
				if enabled_filetypes[vim.bo[bufnr].filetype] then
					return { timeout_ms = 500 }
				else
					return nil
				end
			end,
			default_format_opts = {
				lsp_format = "fallback", -- Use external formatters if configured below, otherwise use LSP formatting. Set to `false` to disable LSP formatting entirely.
			},
			formatters_by_ft = {
				rust = { "rustfmt" },
				python = { "isort", "black" },
			},
		},
	},
}
