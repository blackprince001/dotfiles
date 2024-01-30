-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:

  config.font = wezterm.font('Hack Nerd Font', { weight = 'Bold', italic = false })
  config.font_size = 10
  config.initial_rows = 52
  config.initial_cols = 130
  config.line_height = 1.1
  config.color_scheme = 'Hardcore'

  config.default_cursor_style = 'SteadyBar'
  config.dpi = 96.0
  config.prefer_egl = true
 
  config.window_decorations = "None"
  config.enable_scroll_bar = true
  
  config.command_palette_font_size = 10
  config.command_palette_fg_color = "rgba(206, 205, 195, 1.0)"
  config.command_palette_bg_color = "rgb(16, 15, 15)"
  
-- and finally, return the configuration to wezterm
return config
