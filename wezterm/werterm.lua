local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.window_close_confirmation = 'NeverPrompt'

-- Font
config.font = wezterm.font 'VictorMono Nerd Font'
config.font_size = 17.0

-- Colors
config.color_scheme = 'Twilight (dark) (terminal.sexy)'
config.colors = { background = '#0a0a0a', cursor_bg = '#aaa' }

-- Window
config.window_padding = { left = 20, right = 20, top = 40, bottom = 0 }
config.window_background_opacity = 0.9
config.macos_window_background_blur = 40
config.use_resize_increments = true

-- Cursor
config.animation_fps = 1
config.cursor_thickness = '5px'
config.default_cursor_style = 'SteadyBar'
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
  { key = 'L', mods = 'CTRL', action = wezterm.action.ShowDebugOverlay },
}

return config
