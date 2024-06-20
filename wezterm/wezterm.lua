local wezterm = require "wezterm"
local config = {}

-- color scheme
config.color_scheme = 'Kanagawa (Gogh)'

-- tab bar
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false


-- paddings
config.window_padding = {
  left    = 0,
  right   = 0,
  top     = 0,
  bottom  = 0,
}

-- inactive panes
config.inactive_pane_hsb = {
  saturation = 0.8,
  brightness = 0.8,
}

-- bg opacity
config.window_background_opacity = 0.65

-- font
config.font = wezterm.font 'Miracode' --Miracode/Monocraft
config.bold_brightens_ansi_colors = true
config.font_size = 13.5

config.window_decorations = "RESIZE"


-- Spawn a fish shell in login mode
config.default_prog = { '/opt/homebrew/bin/fish', '-l' }

return config
