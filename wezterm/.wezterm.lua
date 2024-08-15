local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("CaskaydiaCove Nerd Font Mono")
config.font_size = 13
config.line_height = 1.2

config.color_scheme = "Tokyo Night"

config.enable_tab_bar = false

return config
