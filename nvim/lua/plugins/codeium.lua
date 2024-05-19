vim.keymap.set('i', '<C-c>', function()
  return vim.fn['codeium#Accept']()
end, { expr = true, silent = true })

return {
  { 'Exafunction/codeium.vim', event = 'BufEnter' },
}
