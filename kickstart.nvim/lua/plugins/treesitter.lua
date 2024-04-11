return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    dependencies = {
      'windwp/nvim-ts-autotag',
    },
    opts = {
      ensure_installed = {
        'bash',
        'html',
        'lua',
        'markdown',
        'vim',
        'dockerfile',
        'gitignore',
        'html',
        'css',
        'go',
        'gomod',
        'gowork',
        'gosum',
        'javascript',
        'typescript',
        'tsx',
      },
      auto_install = true,
      autotag = { enable = true },
      highlight = {
        enable = true,
        -- use_languagetree = true,
      },
      indent = { enable = true },
    },
    config = function(_, opts)
      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup(opts)
    end,
  },
}
