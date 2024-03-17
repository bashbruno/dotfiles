require("nvchad.mappings")

local map = vim.keymap.set
local builtin = require("telescope.builtin")

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

-- telescope
map("n", "<leader>fz", function()
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[Z] Fuzzy search current buffer" })
map("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
map("n", "<leader>fw", builtin.grep_string, { desc = "[F]find current [W]ord" })
map("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind by [G]rep" })
map("n", "<leader>fn", function()
	builtin.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "[F]ind [N]eovim files" })
