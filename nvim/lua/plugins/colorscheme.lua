return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      no_italic = true,
      term_colors = true,
      transparent_background = false,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
    },
  },

  {
    "AlexBeauchemin/poimandres.nvim",
    branch = "improve-lsp-colors",
    lazy = false,
    priority = 1000,
    opts = {
      -- disable_background = true,
      disable_italics = true,
    },
  },

  {
    "ellisonleao/gruvbox.nvim",
  },

  {
    "Shatur/neovim-ayu",
  },

  {
    "rebelot/kanagawa.nvim",
    opts = {
      commentStyle = { italic = false, bold = false },
      functionStyle = { italic = false, bold = false },
      keywordStyle = { italic = false, bold = false },
      statementStyle = { italic = false, bold = false },
      typeStyle = { italic = false, bold = false },
      dimInactive = true,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
              float = {
                bg = "none",
              },
            },
          },
        },
      },
      overrides = function()
        return {
          -- Normal = { bg = "#181820" },
        }
      end,
    },
  },

  { "datsfilipe/vesper.nvim" },

  {
    "vague2k/vague.nvim",
    config = function()
      require("vague").setup({
        transparent = false,
        style = {
          comments = "none",
          strings = "none",
          keyword_return = "none",
        },
      })
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          vim.cmd("hi StatusLine guibg=NONE")
        end,
      })
    end,
  },

  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "default",
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        identifiers = { italic = false },
        functions = { italic = false },
        variables = { italic = false },
        booleans = { italic = false },
      },
      highlight_overrides = {
        Normal = { bg = "NONE" },
        ["@tag.attribute.tsx"] = { italic = false },
      },
    },
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
        -- StatusLineNC = { fg = "subtle", bg = "surface" },
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
        -- sidebars = "transparent",
        -- floats = "transparent",
        comments = { italic = false },
        keywords = { italic = false },
      },
    },
  },

  -- {
  --   "folke/tokyonight.nvim",
  --   priority = 1000,
  --   config = function()
  --     local transparent = true
  --     local bg = "#011628"
  --     local bg_dark = "#011423"
  --     local bg_highlight = "#143652"
  --     local bg_search = "#0A64AC"
  --     local bg_visual = "#275378"
  --     local fg = "#CBE0F0"
  --     local fg_dark = "#B4D0E9"
  --     local fg_gutter = "#627E97"
  --     local border = "#547998"
  --
  --     require("tokyonight").setup({
  --       style = "night",
  --       transparent = transparent,
  --
  --       styles = {
  --         comments = { italic = false },
  --         keywords = { italic = false },
  --         sidebars = transparent and "transparent" or "dark",
  --         floats = transparent and "transparent" or "dark",
  --       },
  --       on_colors = function(colors)
  --         colors.bg = transparent and colors.none or bg
  --         colors.bg_dark = transparent and colors.none or bg_dark
  --         colors.bg_float = transparent and colors.none or bg_dark
  --         colors.bg_highlight = bg_highlight
  --         colors.bg_popup = bg_dark
  --         colors.bg_search = bg_search
  --         colors.bg_sidebar = transparent and colors.none or bg_dark
  --         colors.bg_statusline = transparent and colors.none or bg_dark
  --         colors.bg_visual = bg_visual
  --         colors.border = border
  --         colors.fg = fg
  --         colors.fg_dark = fg_dark
  --         colors.fg_float = fg
  --         colors.fg_gutter = fg_gutter
  --         colors.fg_sidebar = fg_dark
  --       end,
  --     })
  --   end,
  -- },

  {
    "Vallen217/eidolon.nvim",
    lazy = false,
    priority = 1000,
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
          -- Normal = { bg = "#111111" },
          NormalFloat = { bg = "#000000" },
          -- LineNr = { bg = "#111111", fg = c.vscGray },
          -- CursorLineNr = { bg = "#111111" },
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
