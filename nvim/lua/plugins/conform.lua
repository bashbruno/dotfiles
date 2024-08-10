return {
	{
		"stevearc/conform.nvim",
		opts = {
			notify_on_error = false,
			format_on_save = function(bufnr)
				local disable_filetypes = { c = true, cpp = true }
				return {
					timeout_ms = 500,
					lsp_fallback = true,
					async = true,
				}
			end,
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				tsx = { "prettierd" },
				html = { "prettierd", "prettier" },
				css = { "prettierd", "prettier" },
				less = { "prettierd", "prettier" },
				scss = { "prettierd", "prettier" },
				svelte = { "prettierd", "prettier" },
				json = { "prettierd", "prettier" },
				go = { "goimports", "gofumpt" },
			},
		},
	},
}
