vim.keymap.set('t', '<C-x>', '<C-\\><C-N>', { desc = 'Terminal Escape terminal mode' })
vim.keymap.set({ 'n', 't' }, '<A-v>', function()
  require('nvterm.terminal').toggle 'vertical'
end, { desc = 'Terminal Toggleable vertical term' })
vim.keymap.set({ 'n', 't' }, '<A-h>', function()
  require('nvterm.terminal').toggle 'horizontal'
end, { desc = 'Terminal New horizontal term' })
vim.keymap.set({ 'n', 't' }, '<A-i>', function()
  require('nvterm.terminal').toggle 'float'
end, { desc = 'Terminal Toggle Floating term' })
vim.keymap.set('t', '<ESC>', function()
  local win = vim.api.nvim_get_current_win()
  vim.api.nvim_win_close(win, true)
end, { desc = 'Terminal Close term in terminal mode' })

return {

  {
    'NvChad/nvterm',
    config = function()
      require('nvterm').setup {
        terminals = {
          type_opts = {
            vertical = { location = 'rightbelow', split_ratio = 0.3 },
          },
        },
      }
    end,
  },
}
