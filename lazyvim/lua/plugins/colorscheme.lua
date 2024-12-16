return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },

  {
    "vague2k/vague.nvim",
    config = function()
      require("vague").setup({})
    end,
  },

  {
    name = "rose-pine",
    "rose-pine/neovim",
    lazy = true,
    priority = 1000,
    opts = {
      dim_inactive_windows = false,
      styles = {
        bold = true,
        italic = false,
        transparency = true,
      },
      highlight_groups = {
        -- StatusLine = { fg = "iris", bg = "iris", blend = 10 },
        -- CursorLineNr = { fg = "love" },
        -- StatusLineNC = { fg = 'subtle', bg = 'surface' },
      },
    },
  },

  {
    "folke/tokyonight.nvim",
    priority = 1000,
    lazy = true,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
        comments = { italic = false },
        keywords = { italic = false },
      },
    },
  },

  {
    "sainnhe/gruvbox-material",
    enabled = true,
    lazy = true,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_transparent_background = 0
      vim.g.gruvbox_material_disable_italic_comment = 1
      vim.g.gruvbox_material_foreground = "mix" -- material, mix, or original
      vim.g.gruvbox_material_background = "hard" -- soft, medium, hard
      vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
      vim.g.gruvbox_material_float_style = "dim" -- Background of floating windows
      vim.g.gruvbox_material_statusline_style = "material"
      vim.g.gruvbox_material_better_performance = 1

      vim.api.nvim_create_autocmd("ColorScheme", {
        group = vim.api.nvim_create_augroup("custom_highlights_gruvboxmaterial", {}),
        pattern = "gruvbox-material",
        callback = function()
          local config = vim.fn["gruvbox_material#get_configuration"]()
          local palette =
            vim.fn["gruvbox_material#get_palette"](config.background, config.foreground, config.colors_override)
          local set_hl = vim.fn["gruvbox_material#highlight"]
          set_hl("CursorLineNr", palette.aqua, palette.none)
        end,
      })
    end,
  },

  {
    "Mofiqul/vscode.nvim",
    lazy = true,
    config = function()
      local c = require("vscode.colors").get_colors()
      require("vscode").setup({
        italic_comments = false,
        transparent = true,
        disable_nvimtree_bg = true,
        group_overrides = {
          -- CursorLineNr = { fg = c.vscPink },
          StatusLine = { fg = c.vscGray, bg = "NONE", blend = 10 },
          ModeMsg = { fg = c.vscGray, bg = "NONE", blend = 10 },
          ["@variable.builtin.typescript"] = { fg = c.vscBlue, bg = "NONE" },
          ["@property.method.typescript"] = { fg = c.vscYellow, bg = "NONE" },
          ["@constructor.typescript"] = { fg = c.vscBlue, bg = "NONE" },
          ["@keyword.typescript"] = { fg = c.vscBlue, bg = "NONE" },
          ["@keyword.return.typescript"] = { fg = c.vscPink, bg = "NONE" },
          ["@tag.tsx"] = { fg = c.vscBlueGreen, bg = "NONE" },
          ["@type.definition.go"] = { fg = c.vscBlueGreen, bg = "NONE" },
          ["@keyword.type.go"] = { fg = c.vscPink, bg = "NONE" },
          ["@keyword.function.go"] = { fg = c.vscPink, bg = "NONE" },
        },
      })
    end,
  },

  {
    "tjdevries/colorbuddy.nvim",
    lazy = true,
    config = function()
      local c = require("colorbuddy")
      local Group = c.Group
      local s = c.styles

      Group.new("@tag.attribute.tsx", c.colors.cyan)
      Group.new("@tag.delimiter.tsx", c.colors.white)
      Group.new("@tag.tsx", c.colors.violet)
      Group.new("@tag.builtin.tsx", c.colors.violet, nil, s.NONE)
      Group.new("@function.method.call.tsx", c.colors.blue)
      Group.new("@variable.member.tsx", c.colors.blue)
      Group.new("@lsp.type.method.typescriptreact", c.colors.blue)
      Group.new("@lsp.type.method.typescript", c.colors.blue)
      Group.new("@lsp.type.function.typescriptreact", c.colors.orange)
      Group.new("@lsp.type.function.typescript", c.colors.orange)
      Group.new("@function.call.tsx", c.colors.orange)

      require("colorbuddy").setup()
    end,
  },
}
