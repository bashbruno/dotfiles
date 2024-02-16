return {
  {
    "Mofiqul/vscode.nvim",
    name = "vscode",
    lazy = false,
    priority = 1000,
    config = function()
      require("vscode").setup({
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
        italic_comments = false,
      })
    end,
  },
}
