local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, config)
  local transparent = config.transparent.enabled

  hl("Normal", {
    fg = colors.fg,
    bg = util.get_bg(colors.bg, transparent),
  })

  hl("NormalFloat", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl("NormalNC", {
    fg = colors.fg_dark,
    bg = util.get_bg(colors.bg_dark, transparent),
  })

  hl("FloatBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  hl("CursorLine", {
    bg = colors.cursor,
  })

  hl("CursorLineNr", {
    fg = colors.yellow,
    bold = true,
  })

  hl("LineNr", {
    fg = colors.comment,
  })

  hl("Visual", {
    bg = colors.selection,
  })

  hl("StatusLine", {
    fg = colors.fg,
    bg = colors.bg_alt,
  })

  hl("StatusLineNC", {
    fg = colors.comment,
    bg = colors.bg_dark,
  })

  hl("SignColumn", {
    bg = util.get_bg(colors.bg, transparent),
  })
end

return M
