return {
  {
    "datsfilipe/min-theme.nvim",
    name = "min-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("min-theme").setup({
        theme = "dark",
        italics = {
          comments = false,
          keywords = false,
          functions = false,
          strings = false,
          variables = false,
        },
      })
    end,
  },
}
