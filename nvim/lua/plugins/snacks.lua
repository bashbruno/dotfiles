return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    opts = {
      notifier = {
        enabled = false,
      },
      scroll = {
        enabled = false,
      },
      indent = {
        enabled = false,
      },
      picker = {
        layout = {
          preset = "telescope",
        },
        win = {
          input = {
            keys = {
              ["<c-d>"] = { "list_scroll_down", mode = { "i", "n" } },
              ["<c-e>"] = { "list_scroll_up", mode = { "i", "n" } },
            },
          },
        },
      },
    },

    keys = {
      {
        "<leader>sg",
        function()
          Snacks.picker.grep({ hidden = true })
        end,
        desc = "Grep",
      },
      {
        "<leader>sf",
        function()
          Snacks.picker.files({ hidden = true })
        end,
        desc = "Find Files",
      },
      {
        "<leader><space>",
        function()
          Snacks.picker.buffers({ hidden = true })
        end,
        desc = "Buffers",
      },
      {
        "<leader>sn",
        function()
          Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
        end,
        desc = "Find Config File",
      },
      {
        "<leader>/",
        function()
          Snacks.picker.lines({ layout = { preset = "ivy" } })
        end,
        desc = "Buffer Lines",
      },
      {
        "<leader>sw",
        function()
          Snacks.picker.grep_word({ hidden = true })
        end,
        desc = "Visual selection or word",
        mode = { "n", "x" },
      },
      {
        "<leader>sd",
        function()
          Snacks.picker.diagnostics()
        end,
        desc = "Diagnostics",
      },
      {
        "<leader>sm",
        function()
          Snacks.picker.marks()
        end,
        desc = "Marks",
      },
      {
        "<leader>sq",
        function()
          Snacks.picker.qflist()
        end,
        desc = "Quickfix List",
      },
      {
        "gd",
        function()
          Snacks.picker.lsp_definitions()
        end,
        desc = "Goto Definition",
      },
      {
        "gr",
        function()
          Snacks.picker.lsp_references()
        end,
        nowait = true,
        desc = "References",
      },
      {
        "gI",
        function()
          Snacks.picker.lsp_implementations()
        end,
        desc = "Goto Implementation",
      },
      {
        "gy",
        function()
          Snacks.picker.lsp_type_definitions()
        end,
        desc = "Goto T[y]pe Definition",
      },
      {
        "<leader>ss",
        function()
          Snacks.picker.lsp_symbols()
        end,
        desc = "LSP Symbols",
      },
    },
  },
}
