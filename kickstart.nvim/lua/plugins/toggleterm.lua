vim.keymap.set({ 'n', 't' }, '<A-i>', '<Cmd>ToggleTerm direction=float<CR>', { desc = 'ToggleTerm float' })
vim.keymap.set({ 'n', 't' }, '<A-h>', '<Cmd>ToggleTerm size=10 direction=horizontal<CR>', { desc = 'ToggleTerm horizontal split' })
vim.keymap.set({ 'n', 't' }, '<A-v>', '<Cmd>ToggleTerm size=80 direction=vertical<CR>', { desc = 'ToggleTerm vertical split' })
vim.keymap.set('t', '<C-x>', '<C-\\><C-N>', { desc = 'Terminal Escape terminal mode' })
vim.keymap.set('t', '<ESC>', function()
  local win = vim.api.nvim_get_current_win()
  vim.api.nvim_win_close(win, true)
end, { desc = 'Terminal Close term in terminal mode' })

return {
  {
    'akinsho/toggleterm.nvim',
    cmd = { 'ToggleTerm', 'TermExec' },
    opts = {
      highlights = {
        Normal = { link = 'Normal' },
        NormalNC = { link = 'NormalNC' },
        NormalFloat = { link = 'NormalFloat' },
        FloatBorder = { link = 'FloatBorder' },
        StatusLine = { link = 'StatusLine' },
        StatusLineNC = { link = 'StatusLineNC' },
        WinBar = { link = 'WinBar' },
        WinBarNC = { link = 'WinBarNC' },
      },
      size = 10,
      shading_factor = 2,
      direction = 'float',
      float_opts = { border = 'rounded' },
    },
  },
}
