-- return {
--   {
--     'rose-pine/neovim',
--     name = 'rose-pine',
--     priority = 1000,
--     opts = {
--       styles = {
--         bold = true,
--         italic = false,
--         transparency = true,
--       },
--     },
--     init = function()
--       vim.cmd.colorscheme 'rose-pine'
--       vim.cmd.hi 'Comment gui=none'
--     end,
--   },
-- }
--

return {
  'folke/tokyonight.nvim',
  priority = 1000,
  lazy = true,
  opts = {
    transparent = true,
    styles = {
      sidebars = 'transparent',
      floats = 'transparent',
      comments = { italic = false },
      keywords = { italic = false },
    },
  },
  init = function()
    vim.cmd.colorscheme 'tokyonight'
    vim.cmd.hi 'Comment gui=none'
  end,
}

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
