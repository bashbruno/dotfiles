return {
	{
		name = "rose-pine",
		"rose-pine/neovim",
		lazy = true,
		priority = 1000,
		opts = {
			dim_inactive_windows = false,
			styles = {
				bold = true,
				italic = false,
				transparency = false,
			},
			highlight_groups = {
				StatusLine = { fg = "iris", bg = "iris", blend = 10 },
				CursorLineNr = { fg = "love" },
				-- StatusLineNC = { fg = 'subtle', bg = 'surface' },
			},
		},
		init = function()
			vim.cmd.colorscheme("rose-pine")
			vim.cmd.hi("Comment gui=none")
		end,
	},

	{
		"olivercederborg/poimandres.nvim",
		priority = 1000,
		lazy = true,
		config = function()
			require("poimandres").setup({
				disable_italics = true,
				disable_background = false,
			})
		end,
		init = function()
			-- vim.cmd 'colorscheme poimandres'
			-- vim.cmd.hi 'Comment gui=none'
		end,
	},

	{
		"folke/tokyonight.nvim",
		priority = 1000,
		lazy = true,
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
				comments = { italic = false },
				keywords = { italic = false },
			},
		},
		init = function()
			-- vim.cmd.colorscheme 'tokyonight'
			-- vim.cmd.hi 'Comment gui=none'
		end,
	},

	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		lazy = true,
		opts = {
			transparent = true,
			commentStyle = { italic = false },
			keywordStyle = { italic = false },
			statementStyle = { italic = false },
			colors = {
				theme = {
					all = {
						ui = {
							bg_gutter = "none",
						},
					},
				},
			},
		},
		init = function() end,
	},

	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = true,
		opts = {
			transparent_background = true,
			no_italic = true,
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				telescope = {
					enabled = true,
				},
				which_key = true,
			},
		},
		init = function() end,
	},

	{
		"EdenEast/nightfox.nvim",
		priority = 1000,
		lazy = true,
		opts = {
			transparent = true,
			dim_inactive = true,
		},
		init = function() end,
	},

	{
		"sainnhe/gruvbox-material",
		enabled = true,
		lazy = true,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_transparent_background = 0
			vim.g.gruvbox_material_disable_italic_comment = 1
			vim.g.gruvbox_material_foreground = "mix" -- material, mix, or original
			vim.g.gruvbox_material_background = "hard" -- soft, medium, hard
			vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
			vim.g.gruvbox_material_float_style = "dim" -- Background of floating windows
			vim.g.gruvbox_material_statusline_style = "material"
			vim.g.gruvbox_material_better_performance = 1

			vim.api.nvim_create_autocmd("ColorScheme", {
				group = vim.api.nvim_create_augroup("custom_highlights_gruvboxmaterial", {}),
				pattern = "gruvbox-material",
				callback = function()
					local config = vim.fn["gruvbox_material#get_configuration"]()
					local palette = vim.fn["gruvbox_material#get_palette"](
						config.background,
						config.foreground,
						config.colors_override
					)
					local set_hl = vim.fn["gruvbox_material#highlight"]
					set_hl("CursorLineNr", palette.aqua, palette.none)
				end,
			})

			-- vim.cmd.colorscheme 'gruvbox-material'
			-- vim.cmd.hi 'Comment gui=none'
		end,
	},

	{
		"datsfilipe/min-theme.nvim",
		lazy = true,
		opts = {
			transparent = true,
			italics = {
				comments = false,
				keywords = false,
				functions = false,
				strings = false,
				variables = false,
			},
		},
		init = function() end,
	},

	{
		"Mofiqul/vscode.nvim",
		config = function()
			local c = require("vscode.colors").get_colors()
			require("vscode").setup({
				italic_comments = false,
				transparent = true,
				disable_nvimtree_bg = true,
				group_overrides = {
					CursorLineNr = { fg = c.vscPink },
					StatusLine = { fg = c.vscGray, bg = "NONE", blend = 10 },
					ModeMsg = { fg = c.vscYellow, bg = "NONE", blend = 10 },
					["@variable.builtin.typescript"] = { fg = c.vscBlue, bg = "NONE" },
					["@property.method.typescript"] = { fg = c.vscYellow, bg = "NONE" },
					["@constructor.typescript"] = { fg = c.vscBlue, bg = "NONE" },
					["@keyword.typescript"] = { fg = c.vscBlue, bg = "NONE" },
					["@keyword.return.typescript"] = { fg = c.vscPink, bg = "NONE" },
					["@tag.tsx"] = { fg = c.vscBlueGreen, bg = "NONE" },
					["@type.definition.go"] = { fg = c.vscBlueGreen, bg = "NONE" },
					["@keyword.type.go"] = { fg = c.vscPink, bg = "NONE" },
					["@keyword.function.go"] = { fg = c.vscPink, bg = "NONE" },
				},
			})
		end,
		init = function()
			-- vim.cmd.colorscheme 'vscode'
			-- vim.cmd.hi 'Comment gui=none'
		end,
	},
}
