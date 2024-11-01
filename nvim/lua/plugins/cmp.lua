return {
  {
    "hrsh7th/nvim-cmp",
    version = false, -- last release is way too old
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    opts = {
      experimental = {
        ghost_text = false,
      },
      mapping = require("cmp").mapping.preset.insert({
        ["<tab>"] = require("cmp").mapping.select_next_item(),
        ["<S-tab>"] = require("cmp").mapping.select_prev_item(),
      }),
      window = {
        completion = require("cmp").config.window.bordered(),
        documentation = require("cmp").config.window.bordered(),
      },
    },
  },
}
