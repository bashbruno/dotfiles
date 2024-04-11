return {
  {
    'stevearc/conform.nvim',
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        local disable_filetypes = { c = true, cpp = true }
        return {
          timeout_ms = 500,
          lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
          async = false,
        }
      end,
      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = { 'prettier' },
        javascriptreact = { 'prettier' },
        typescript = { 'prettier' },
        typescriptreact = { 'prettier' },
        tsx = { 'prettier' },
        html = { 'prettier' },
        css = { 'prettier' },
        less = { 'prettier' },
        scss = { 'prettier' },
        json = { 'prettier' },
        go = { 'goimports', 'gofumpt' },
      },
    },
  },
}
