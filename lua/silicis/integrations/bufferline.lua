local M = {}

local util = require("silicis.util")

function M.setup(colors)
  local bg_inactive = util.darken(colors.bg_secondary, 0.04)
  local bg_active = util.blend(colors.orange_dark, colors.bg, 0.10)

  return {
    fill = {
      bg = colors.bg_dark,
    },

    background = {
      fg = colors.comment,
      bg = bg_inactive,
    },

    buffer_visible = {
      fg = colors.yellow,
      bg = bg_inactive,
      bold = true
    },

    buffer_selected = {
      fg = colors.fg,
      bg = bg_active,
      bold = true,
      italic = false,
    },

    -- Separators
    separator = {
      fg = colors.bg,
      bg = colors.bg_dark,
    },

    separator_selected = {
      fg = bg_active,
      bg = bg_active,
    },

    separator_visible = {
      fg = bg_inactive,
      bg = bg_inactive,
    },

    -- Modified
    modified = {
      fg = colors.orange,
      bg = bg_inactive,
    },

    modified_selected = {
      fg = colors.yellow,
      bg = bg_active,
    },

    -- Close buttons
    close_button = {
      fg = colors.comment,
      bg = bg_inactive,
    },

    close_button_selected = {
      fg = colors.red,
      bg = bg_active,
    },

    -- Duplicate names
    duplicate = {
      fg = colors.comment,
      bg = bg_inactive,
      italic = true,
    },

    duplicate_selected = {
      fg = colors.comment,
      bg = bg_active,
      italic = true,
    },

    -- Diagnostics
    diagnostic = {
      fg = colors.yellow,
      bg = bg_inactive,
    },

    diagnostic_selected = {
      fg = colors.yellow,
      bg = bg_active,
      bold = true,
    },

    -- Hint/info/warn/error
    hint = {
      fg = colors.blue,
      bg = bg_inactive,
    },

    info = {
      fg = colors.aqua,
      bg = bg_inactive,
    },

    warning = {
      fg = colors.yellow,
      bg = bg_inactive,
    },

    error = {
      fg = colors.red,
      bg = bg_inactive,
    },

    hint_selected = {
      fg = colors.cyan,
      bg = bg_active,
      bold = true,
    },

    info_selected = {
      fg = colors.blue,
      bg = bg_active,
      bold = true,
    },

    warning_selected = {
      fg = colors.yellow,
      bg = bg_active,
      bold = true,
    },

    error_selected = {
      fg = colors.red,
      bg = bg_active,
      bold = true,
    },

    -- Indicator
    indicator_selected = {
      fg = colors.orange,
      bg = bg_active,
    },
  }
end

return M
