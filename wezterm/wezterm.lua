local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Font
config.font = wezterm.font("VictorMono Nerd Font Mono", { weight = "Medium" })
config.font_size = 16.0
config.cell_width = 1.05

-- Colors
config.colors = {
  background = "#11111b",
  cursor_bg = "#f5e0dc",
  cursor_border = "#f5e0dc",
  cursor_fg = "#11111b",
  foreground = "#cdd6f4",
  ansi = { "#45475a", "#f38ba8", "#a6e3a1", "#f9e2af", "#89b4fa", "#f5c2e7", "#94e2d5", "#bac2de" },
  brights = { "#585b70", "#f38ba8", "#a6e3a1", "#f9e2af", "#89b4fa", "#f5c2e7", "#94e2d5", "#ffffff" },
}

-- Window
config.window_padding = { left = 20, right = 20, top = 40, bottom = 0 }
config.use_resize_increments = true
config.window_background_opacity = 0.9
config.macos_window_background_blur = 30
config.window_decorations = "TITLE | RESIZE | MACOS_FORCE_ENABLE_SHADOW"
config.window_close_confirmation = "NeverPrompt"

-- Tabs
config.enable_tab_bar = false

-- Keys
config.disable_default_key_bindings = true
config.keys = {
  { key = "Enter", mods = "CMD", action = wezterm.action.ToggleFullScreen },
  { key = "q", mods = "CMD", action = wezterm.action.QuitApplication },
  { key = "v", mods = "CMD", action = wezterm.action.PasteFrom("Clipboard") },
  { key = "c", mods = "CMD", action = wezterm.action.CopyTo("Clipboard") },
  { key = "L", mods = "CTRL", action = wezterm.action.ShowDebugOverlay },
  { key = " ", mods = "CTRL", action = wezterm.action.QuickSelect },
  { key = "h", mods = "CMD", action = wezterm.action.HideApplication },
}

return config
