return {
  {
    "nvim-tree/nvim-web-devicons",
    enabled = vim.g.have_nerd_font,
    opts = {
      override = {
        tsx = {
          icon = "",
          color = "#519ABA",
          cterm_color = "65",
          name = "tsx",
        },
        [".env.example"] = {
          icon = "",
          color = "#faf743",
          cterm_color = "227",
          name = "Env",
        },
        [".env.local"] = {
          icon = "",
          color = "#faf743",
          cterm_color = "227",
          name = "Env",
        },
        [".env.development"] = {
          icon = "",
          color = "#faf743",
          cterm_color = "227",
          name = "Env",
        },
        [".env.production"] = {
          icon = "",
          color = "#faf743",
          cterm_color = "227",
          name = "Env",
        },
        [".env.stating"] = {
          icon = "",
          color = "#faf743",
          cterm_color = "227",
          name = "Env",
        },
        [".node-version"] = {
          icon = "",
          color = "#417E38",
          cterm_color = "197",
          name = "NodeModules",
        },
        lock = { icon = "󰌾", name = "Lock" },
        mp3 = { icon = "󰎆", name = "Mp3" },
        mp4 = { icon = "", name = "Mp4" },
        out = { icon = "", name = "Out" },
        ["robots.txt"] = { icon = "󰚩", name = "Robots", color = "#E8274B" },
        ttf = { icon = "", name = "TrueTypeFont" },
        rpm = { icon = "", name = "Rpm" },
        woff = { icon = "", name = "WebOpenFontFormat" },
        woff2 = { icon = "", name = "WebOpenFontFormat2" },
        xz = { icon = "", name = "Xz" },
        zip = { icon = "", name = "Zip" },
      },
    },
  },
}
