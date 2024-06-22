local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font(
  'UDEV Gothic 35NF',
  {
    weight="Regular",
    stretch="Normal",
    italic=true
  }
)
config.font_size = 15.0
config.color_scheme = "Catppuccin Macchiato"
config.adjust_window_size_when_changing_font_size = false

return config
