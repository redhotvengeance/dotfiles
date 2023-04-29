local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.925
config.window_decorations = "RESIZE"

return config
