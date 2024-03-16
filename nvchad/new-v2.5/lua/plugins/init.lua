return {
	{
		"stevearc/conform.nvim",
		config = function()
			require("configs.conform")
		end,
	},

	{
		"nvim-tree/nvim-web-devicons",
		opts = {
			override = {
				tsx = {
					icon = "",
					color = "#519ABA",
					cterm_color = "65",
					name = "tsx",
				},
			},
		},
	},

	{
		"Exafunction/codeium.vim",
		event = "BufEnter",
		config = function()
			vim.keymap.set("i", "<C-c>", function()
				return vim.fn["codeium#Accept"]()
			end, { expr = true, silent = true })
			vim.keymap.set("i", "<c-;>", function()
				return vim.fn["codeium#CycleCompletions"](1)
			end, { expr = true, silent = true })
			vim.keymap.set("i", "<c-,>", function()
				return vim.fn["codeium#CycleCompletions"](-1)
			end, { expr = true, silent = true })
			vim.keymap.set("i", "<c-x>", function()
				return vim.fn["codeium#Clear"]()
			end, { expr = true, silent = true })
		end,
	},

	-- {
	-- 	"jose-elias-alvarez/null-ls.nvim",
	-- 	ft = "go",
	-- 	opts = function()
	-- 		return require("configs.null-ls")
	-- 	end,
	-- },

	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			git = {
				enable = false,
			},

			renderer = {
				highlight_git = true,
				icons = {
					show = {
						git = true,
					},
				},
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				-- lua stuff
				"lua-language-server",
				"stylua",

				-- web dev stuff
				"css-lsp",
				"html-lsp",
				"typescript-language-server",
				"tailwindcss-language-server",
				"prettier",
				"eslint-lsp",
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"lua",
				"html",
				"css",
				"javascript",
				"typescript",
				"tsx",
				"markdown",
			},
			auto_install = true,
			indent = {
				enable = true,
			},
		},
	},
}
