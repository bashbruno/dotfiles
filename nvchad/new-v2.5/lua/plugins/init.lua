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
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},

	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},

	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ -- If encountering errors, see telescope-fzf-native README for install instructions
				"nvim-telescope/telescope-fzf-native.nvim",

				-- `build` is used to run some command when the plugin is installed/updated.
				-- This is only run then, not every time Neovim starts up.
				build = "make",

				-- `cond` is a condition used to determine whether this plugin should be
				-- installed and loaded.
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
			{ "nvim-telescope/telescope-ui-select.nvim" },

			-- Useful for getting pretty icons, but requires a Nerd Font.
			{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
		},
		config = function()
			require("nvchad.configs.telescope")
			require("configs.telescope")
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
		init = function(plugin)
			require("lazy.core.loader").add_to_rtp(plugin)
			require("nvim-treesitter.query_predicates")
			require("nvim-ts-autotag").setup()
		end,
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
			autotag = { enable = true },
			indent = {
				enable = true,
			},
		},
	},

	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
			require("nvim-treesitter.configs").setup({
				autotag = {
					enable = true,
					enable_rename = true,
				},
			})
		end,
	},
}
