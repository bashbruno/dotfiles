-- return {
--   {
--     name = 'rose-pine',
--     'rose-pine/neovim',
--     priority = 1000,
--     opts = {
--       dim_inactive_windows = false,
--       styles = {
--         bold = true,
--         italic = false,
--         transparency = true,
--       },
--       highlight_groups = {
--         StatusLine = { fg = 'iris', bg = 'iris', blend = 10 },
--         CursorLineNr = { fg = 'love' },
--         -- StatusLineNC = { fg = 'subtle', bg = 'surface' },
--       },
--     },
--     init = function()
--       vim.cmd.colorscheme 'rose-pine'
--       vim.cmd.hi 'Comment gui=none'
--     end,
--   },
-- }

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

-- return {
--   {
--     'EdenEast/nightfox.nvim',
--     priority = 1000,
--     opts = {
--       transparent = true,
--       dim_inactive = true,
--     },
--     init = function()
--       vim.cmd.colorscheme 'duskfox'
--       vim.cmd.hi 'Comment gui=none'
--     end,
--   },
-- }

return {
  {
    'sainnhe/gruvbox-material',
    enabled = true,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_transparent_background = 0
      vim.g.gruvbox_material_disable_italic_comment = 1
      vim.g.gruvbox_material_foreground = 'material' -- material, mix, or original
      vim.g.gruvbox_material_background = 'hard' -- soft, medium, hard
      vim.g.gruvbox_material_ui_contrast = 'high' -- The contrast of line numbers, indent lines, etc.
      vim.g.gruvbox_material_float_style = 'dim' -- Background of floating windows
      vim.g.gruvbox_material_statusline_style = 'material'
      vim.g.gruvbox_material_better_performance = 1

      vim.api.nvim_create_autocmd('ColorScheme', {
        group = vim.api.nvim_create_augroup('custom_highlights_gruvboxmaterial', {}),
        pattern = 'gruvbox-material',
        callback = function()
          local config = vim.fn['gruvbox_material#get_configuration']()
          local palette = vim.fn['gruvbox_material#get_palette'](config.background, config.foreground, config.colors_override)
          local set_hl = vim.fn['gruvbox_material#highlight']
          set_hl('CursorLineNr', palette.aqua, palette.none)
        end,
      })

      vim.cmd.colorscheme 'gruvbox-material'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
