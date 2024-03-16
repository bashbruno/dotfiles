require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- custom below

-- J and K will move selection up/down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- move up/down file half page at a time and keep cursor in the middle
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-e>", "<C-u>zz")

vim.opt.relativenumber = true

-- floating diagnostic
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show floating [D]iagnostic" })

-- conform format on save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
