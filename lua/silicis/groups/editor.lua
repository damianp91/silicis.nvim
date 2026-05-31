-- NOTE: General colors custom all integrations inherits these colors
local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, config)
  local transparent = config.transparent.enabled

  ------------------
  -- secction normal
  hl("Normal", {
    fg = colors.fg,
    bg = util.get_bg(colors.bg, transparent),
  })

  -- (NC) non current
  hl("NormalNC", {
    fg = colors.fg_dark,
    bg = util.get_bg(colors.bg_secondary, transparent),
  })

  hl("NormalFloat", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl("NormalSB", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl("NormalShadow", {
    bg = colors.bg_float,
  })

  -- terminal
  hl("TermCursor", {
    fg = colors.green,
  })

  hl("TermCursorNC", {
    fg = colors.green,
  })

  -- chars
  hl("NonText", {
    fg = colors.comment
  })

  hl("EndOfBuffer", {
    link = "NonText"
  })

  hl("Whitespace", {
    fg = util.darken(colors.comment, 0.5)
  })

  hl("Conceal", {
    fg = colors.comment,
    bg = util.get_bg(colors.bg, transparent)
  })

  ------------------
  -- section float
  hl("FloatBorder", {
    fg = util.darken(colors.fg_dark, 0.8),
    bg = colors.bg_float,
  })

  hl("FloatTitle", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl("FloatShadow", {
    bg = colors.bg_float,
  })

  hl("FloatShadowThrough", {
    bg = colors.bg_float,
  })

  ------------------
  -- others
  hl("WinSeparator", {
    fg = util.darken(colors.fg_dark, 0.3),
    bg = colors.bg_secondary,
  })

  hl("Title", {
    fg = colors.green,
    bold = true
  })

  hl("Directory", {
    fg = util.darken(colors.green_neon, 0.9),
    bold = true,
  })

  hl("Special", {
    fg = colors.blue_dark,
    italic = true,
  })

  -- current number
  hl("Cursor", {
    fg = colors.fg_dark,
  })

  hl("CursorLine", {
    bg = colors.cursorline,
  })

  hl("CursorLineNr", {
    fg = colors.yellow,
    bold = true,
  })

  -- another members
  hl("LineNr", {
    fg = colors.comment,
  })

  hl("Visual", {
    bg = colors.selection_soft,
  })

  hl("VisualNOS", {
    link = "Visual",
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

  hl("ColorColumn", {
    bg = colors.fg_dark,
  })

  hl("SpellBad", {
    undercurl = true,
    sp = colors.red_dark,
  })

  hl("MatchParen", {
    bg = util.blend(colors.orange_dark, colors.bg, 0.15),
    bold = true,
  })

  hl("Statement", {
    fg = colors.aqua_dark,
  })

  hl("Label", {
    fg = colors.red_dark,
  })

  hl("Underlined", {
    fg = colors.blue,
  })

end

return M
