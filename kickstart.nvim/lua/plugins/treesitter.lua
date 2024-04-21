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
      query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { 'BufWrite', 'CursorHold' },
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
