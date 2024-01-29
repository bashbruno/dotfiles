-- Pull in the wezterm API
local wezterm = require("wezterm")
-- local mux = wezterm.mux
-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 16
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_padding = {
	bottom = 0,
}
config.integrated_title_button_style = "MacOsNative"
config.use_fancy_tab_bar = false
config.initial_cols = 220
config.initial_rows = 50

config.colors = {
	tab_bar = {
		-- background from poimandres
		-- background = "#1b1e28",
		-- background for catppuccin
		background = "#1E1E2E",
	},
}

-- start in fullscreen
-- wezterm.on("gui-startup", function(cmd)
-- 	local tab, pane, window = mux.spawn_window(cmd or {})
-- 	window:gui_window():maximize()
-- end)

-- and finally, return the configuration to wezterm
return config
