vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', { desc = 'Nvimtree Toggle window' })
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeFocus<CR>', { desc = 'Nvimtree Focus window' })

return {
  {
    'nvim-tree/nvim-tree.lua',
    opts = {
      sort = {
        sorter = 'case_sensitive',
      },
      view = {
        width = 30,
      },
      filters = {
        dotfiles = true,
      },
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
}
