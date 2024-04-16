return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    opts = {
      dim_inactive_windows = true,
      styles = {
        bold = true,
        italic = false,
        transparency = false,
      },
      highlight_groups = {
        StatusLine = { fg = 'iris', bg = 'iris', blend = 10 },
        CursorLineNr = { fg = 'love' },
        -- StatusLineNC = { fg = 'subtle', bg = 'surface' },
      },
    },
    init = function()
      vim.cmd.colorscheme 'rose-pine'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}

-- return {
--   {
--     'olivercederborg/poimandres.nvim',
--     lazy = false,
--     priority = 1000,
--     config = function()
--       require('poimandres').setup {
--         disable_italics = true,
--         disable_background = false,
--       }
--     end,
--
--     init = function()
--       vim.cmd 'colorscheme poimandres'
--       vim.cmd.hi 'Comment gui=none'
--     end,
--   },
-- }

-- return {
--   'folke/tokyonight.nvim',
--   priority = 1000,
--   lazy = true,
--   opts = {
--     transparent = true,
--     styles = {
--       sidebars = 'transparent',
--       floats = 'transparent',
--       comments = { italic = false },
--       keywords = { italic = false },
--     },
--   },
--   init = function()
--     vim.cmd.colorscheme 'tokyonight'
--     vim.cmd.hi 'Comment gui=none'
--   end,
-- }

-- return {
--   {
--     'ellisonleao/gruvbox.nvim',
--     priority = 1000,
--     config = true,
--     opts = {
--       transparent_mode = true,
--       italic = {
--         strings = false,
--         emphasis = false,
--         comments = false,
--         operators = false,
--         folds = false,
--       },
--     },
--     init = function()
--       vim.cmd.colorscheme 'gruvbox'
--       vim.cmd.hi 'Comment gui=none'
--     end,
--   },
-- }

-- return {
--   'rebelot/kanagawa.nvim',
--   priority = 1000,
--   lazy = true,
--   opts = {
--     transparent = true,
--     commentStyle = { italic = false },
--     keywordStyle = { italic = false },
--     statementStyle = { italic = false },
--     colors = {
--       theme = {
--         all = {
--           ui = {
--             bg_gutter = 'none',
--           },
--         },
--       },
--     },
--   },
--   init = function()
--     vim.cmd.colorscheme 'kanagawa'
--     vim.cmd.hi 'Comment gui=none'
--   end,
-- }

-- return {
--   'catppuccin/nvim',
--   name = 'catppuccin',
--   priority = 1000,
--   lazy = true,
--   opts = {
--     transparent_background = true,
--     no_italic = true,
--     integrations = {
--       cmp = true,
--       gitsigns = true,
--       nvimtree = true,
--       treesitter = true,
--       telescope = {
--         enabled = true,
--       },
--       which_key = true,
--     },
--   },
--   init = function()
--     vim.cmd.colorscheme 'catppuccin'
--     vim.cmd.hi 'Comment gui=none'
--   end,
-- }

-- return {
--   {
--     'lunarvim/darkplus.nvim',
--     priority = 1000,
--     opts = {
--       transparent = false,
--     },
--     init = function()
--       vim.cmd.colorscheme 'darkplus'
--       vim.cmd.hi 'Comment gui=none'
--     end,
--   },
-- }
