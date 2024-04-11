return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
      ensure_installed = {
        'bash',
        'c',
        'html',
        'lua',
        'markdown',
        'vim',
        'vimdoc',
        'html',
        'css',
        'go',
        'javascript',
        'typescript',
        'tsx',
      },
      auto_install = true,
      autotag = { enable = true },
      highlight = {
        enable = true,
        use_languagetree = true,
      },
      indent = { enable = true },
    },
    config = function(_, opts)
      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup(opts)
    end,
  },
}
