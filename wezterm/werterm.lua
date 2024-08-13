local wezterm = require 'wezterm'
local config = {}

-- Appearance
config.font = wezterm.font 'VictorMono Nerd Font'
config.font_size = 17.0
config.color_scheme = 'Twilight (dark) (terminal.sexy)'
config.window_background_opacity = 0.9
config.macos_window_background_blur = 20
config.cursor_thickness = '10px'
config.default_cursor_style = 'BlinkingBlock'
config.animation_fps = 1
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'

-- Tabs
config.enable_tab_bar = false

-- Keys
config.disable_default_key_bindings = true
config.keys = {
  { key = 'Enter', mods = 'CMD', action = wezterm.action.ToggleFullScreen },
  { key = 'q', mods = 'CMD', action = wezterm.action.QuitApplication },
  { key = 'v', mods = 'CMD', action = wezterm.action.PasteFrom 'Clipboard' },
  { key = 'c', mods = 'CMD', action = wezterm.action.CopyTo 'Clipboard' },
}

return config
