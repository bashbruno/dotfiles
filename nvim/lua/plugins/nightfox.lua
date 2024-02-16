return {
  {
    "EdenEast/nightfox.nvim",
    name = "nightfox",
    lazy = false,
    priority = 1000,
    config = function()
      require("nightfox").setup({
        -- variants are nightfox, duskfox, carbonfox
      })
    end,
  },
}
