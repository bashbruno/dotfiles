-- Pull in the wezterm API
local wezterm = require("wezterm")
-- local mux = wezterm.mux
-- This table will hold the configuration.
local config = {}
local colors = require("lua/rose-pine").colors()
local window_frame = require("lua/rose-pine").window_frame()
local act = wezterm.action

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "Rosé Pine (Gogh)"
config.font = wezterm.font("JetBrainsMono Nerd Font")
-- config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 14
config.window_padding = {
	bottom = 0,
	left = 0,
	right = 0,
	top = 0,
}
config.use_fancy_tab_bar = false
config.initial_cols = 200
config.initial_rows = 45

config.colors = {
	tab_bar = {
		-- background from poimandres
		-- background = "#1b1e28",
		-- background for catppuccin
		-- background = "#1E1E2E",
		-- background for Kanagawa
		-- background = "#1F1F28",
		-- background for rose-pine
		-- background = "#191724",
	},
}

--
config.window_frame = window_frame
config.colors = colors
config.default_prog = { "C:\\Program Files\\Git\\bin\\bash.exe" }

-- start in fullscreen--
-- wezterm.on("gui-startup", function(cmd)
-- 	local tab, pane, window = mux.spawn_window(cmd or {})
-- 	window:gui_window():maximize()
-- end)

-- and finally, return the configuration to wezterm
return config
