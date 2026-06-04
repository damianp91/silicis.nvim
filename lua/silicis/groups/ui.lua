local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors)
  -- Completion menu
  hl("Pmenu", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl("PmenuSel", {
    fg = colors.fg,
    bg = colors.selection,
    bold = true,
  })

  hl("PmenuSbar", {
    bg = colors.comment,
  })

  hl("PmenuThumb", {
    bg = colors.border,
  })

  hl("PmenuMatch", {
    fg = colors.yellow_dark,
    bold = true
  })

  hl("PmenuMatchSel", {
    fg = colors.yellow_dark,
  })

  -- tabs
  hl("Tabline", {
    fg = colors.comment,
    bg = colors.bg_float,
  })

  hl("TabLineSel", {
    fg = colors.bg,
    bg = util.darken(colors.green_neon, 0.8),
  })

  hl("TabLineFill", {
    bg = colors.bg_float,
  })

  -- folded
  hl("Folded", {
    fg = colors.fg_dark,
    bg = colors.bg_secondary,
    italic = true,
  })

  hl("FoldColumn", {
    fg = colors.fg_dark,
    bg = colors.bg,
  })

  -- cmd
  hl("MsgArea", {
    fg = colors.blue_light,
    bg = colors.bg_float,
  })

  hl("MoreMsg", {
    fg = colors.blue,
    bg = colors.bg_float,
  })

  hl("ModeMsg", {
    fg = colors.fg_dark,
    bg = colors.bg_float,
  })

  hl("Question", {
    fg = colors.red_dark,
  })

  hl("WarningMsg", {
    fg = colors.yellow_dark,
    bg = colors.bg_float,
  })

  hl("ErrorMsg", {
    fg = colors.red,
    bg = colors.bg_float,
  })
end

return M
