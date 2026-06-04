local M = {}

local util = require("silicis.util")
local hl = util.hl

function M.setup(colors)
  local bg_inactive = util.darken(colors.bg_secondary, 0.04)
  local bg_active = util.blend(colors.orange_dark, colors.bg, 0.10)

  hl("BufferLineFill", {
    bg = colors.bg_float,
  })

  hl("BufferLineBackground", {
    fg = colors.comment,
    bg = bg_inactive,
  })

  hl("BufferLineBufferVisible", {
    fg = colors.yellow,
    bg = bg_inactive,
    bold = true,
  })

  hl("BufferLineBufferSelected", {
    fg = colors.fg,
    bg = bg_active,
    bold = true,
    italic = false,
  })

  hl("BufferLineSeparator", {
    fg = colors.bg,
    bg = colors.bg_float,
  })

  hl("BufferLineSeparatorSelected", {
    fg = bg_active,
    bg = bg_active,
  })

  hl("BufferLineSeparatorVisible", {
    fg = bg_inactive,
    bg = bg_inactive,
  })

  hl("BufferLineModified", {
    fg = colors.orange,
    bg = bg_inactive,
  })

  hl("BufferLineModifiedSelected", {
    fg = colors.yellow,
    bg = bg_active,
  })

  hl("BufferLineCloseButton", {
    fg = colors.comment,
    bg = bg_inactive,
  })

  hl("BufferLineCloseButtonSelected", {
    fg = colors.red,
    bg = bg_active,
  })

  hl("BufferLineDuplicate", {
    fg = colors.comment,
    bg = bg_inactive,
    italic = true,
  })

  hl("BufferLineDuplicateSelected", {
    fg = colors.comment,
    bg = bg_active,
    italic = true,
  })

  hl("BufferLineDiagnostic", {
    fg = colors.yellow,
    bg = bg_inactive,
  })

  hl("BufferLineDiagnosticSelected", {
    fg = colors.yellow,
    bg = bg_active,
    bold = true,
  })

  hl("BufferLineHint", {
    fg = colors.blue,
    bg = bg_inactive,
  })

  hl("BufferLineInfo", {
    fg = colors.aqua,
    bg = bg_inactive,
  })

  hl("BufferLineWarning", {
    fg = colors.yellow,
    bg = bg_inactive,
  })

  hl("BufferLineError", {
    fg = colors.red,
    bg = bg_inactive,
  })

  hl("BufferLineHintSelected", {
    fg = colors.aqua,
    bg = bg_active,
    bold = true,
  })

  hl("BufferLineInfoSelected", {
    fg = colors.blue,
    bg = bg_active,
    bold = true,
  })

  hl("BufferLineWarningSelected", {
    fg = colors.yellow,
    bg = bg_active,
    bold = true,
  })

  hl("BufferLineErrorSelected", {
    fg = colors.red,
    bg = bg_active,
    bold = true,
  })

  hl("BufferLineIndicatorSelected", {
    fg = colors.orange,
    bg = bg_active,
  })
end

return M
