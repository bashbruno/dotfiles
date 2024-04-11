return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    opts = {
      styles = {
        bold = true,
        italic = false,
        transparency = true,
      },
    },
    init = function()
      vim.cmd.colorscheme 'rose-pine'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
