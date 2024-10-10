local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Font
config.font = wezterm.font('VictorMono Nerd Font Mono', { weight = 'Medium' })
config.font_size = 16.0
config.cell_width = 1.05

-- Colors
config.colors = {
  background = '#0a0a0a',
  foreground = '#a7a7a7',
  cursor_bg = '#aaa',
  ansi = {
    '#1e1e1e', -- black
    '#cf6a4c', -- red
    '#8f9d6a', -- green
    '#f9ee98', -- yellow
    '#7587a6', -- blue
    '#9b859d', -- magenta
    '#afc4db', -- cyan
    '#a7a7a7', -- white
  },
  brights = {
    '#5f5a60', -- black
    '#cf6a4c', -- red
    '#8f9d6a', -- green
    '#f9ee98', -- yellow
    '#7587a6', -- blue
    '#9b859d', -- magenta
    '#afc4db', -- cyan
    '#ffffff', -- white
  },
}

-- Window
config.window_padding = { left = 20, right = 20, top = 40, bottom = 0 }
config.use_resize_increments = true
config.window_background_opacity = 0.9
config.macos_window_background_blur = 30
config.window_decorations = "TITLE | RESIZE | MACOS_FORCE_ENABLE_SHADOW"
config.window_close_confirmation = 'NeverPrompt'

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
  { key = ' ', mods = 'CTRL', action = wezterm.action.QuickSelect },
  { key = 'h', mods = 'CMD', action = wezterm.action.HideApplication },
}

return config
