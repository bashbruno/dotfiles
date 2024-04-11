vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeFindFileToggle<CR>', { desc = 'Nvimtree Toggle window' })
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeFocus<CR>', { desc = 'Nvimtree Focus window' })

return {
  {
    'nvim-tree/nvim-tree.lua',
    opts = {
      disable_netrw = true,
      hijack_netrw = true,
      hijack_cursor = true,
      hijack_unnamed_buffer_when_opening = false,
      sort = {
        sorter = 'case_sensitive',
      },
      view = {
        adaptive_size = false,
        side = 'left',
        width = 30,
        preserve_window_proportions = true,
      },
      filters = {
        dotfiles = false,
      },
      git = {
        enable = false,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          show = {
            git = true,
          },
          glyphs = {
            default = '󰈚',
            symlink = '',
            folder = {
              default = '',
              empty = '',
              empty_open = '',
              open = '',
              symlink = '',
              symlink_open = '',
              arrow_open = '',
              arrow_closed = '',
            },
          },
        },
        highlight_git = true,
      },
    },
  },
}
