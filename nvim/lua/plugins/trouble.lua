return {
	{
		"folke/trouble.nvim",
		branch = "main",
		keys = {
			{
				"<leader>tt",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "[T]rouble Workspace Diagnostics",
			},
			{
				"<leader>tT",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "[T]rouble Buffer Diagnostics",
			},
		},
		opts = {},
	},
}
