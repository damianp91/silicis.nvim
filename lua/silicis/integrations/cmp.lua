local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, _)
  local menu_bg = util.darken(colors.bg_float, 0.08)
  local sel_bg = util.blend(colors.blue, colors.bg, 0.12)

  -- Completion menu
  hl("Pmenu", {
    fg = colors.fg,
    bg = menu_bg,
  })

  hl("PmenuSel", {
    fg = colors.fg,
    bg = sel_bg,
    bold = true,
  })

  hl("PmenuSbar", {
    bg = colors.bg_alt,
  })

  hl("PmenuThumb", {
    bg = colors.border,
  })

  -- nvim-cmp
  hl("CmpBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  hl("CmpDocBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  hl("CmpPmenu", {
    bg = colors.bg_float,
  })

  -- Item kinds
  hl("CmpItemKindFunction", {
    fg = colors.blue,
  })

  hl("CmpItemKindMethod", {
    fg = colors.cyan,
  })

  hl("CmpItemKindVariable", {
    fg = colors.fg,
  })

  hl("CmpItemKindField", {
    fg = colors.cyan,
  })

  hl("CmpItemKindProperty", {
    fg = colors.cyan,
  })

  hl("CmpItemKindClass", {
    fg = colors.yellow,
  })

  hl("CmpItemKindInterface", {
    fg = colors.yellow,
  })

  hl("CmpItemKindModule", {
    fg = colors.orange,
  })

  hl("CmpItemKindKeyword", {
    fg = colors.purple,
  })

  hl("CmpItemKindSnippet", {
    fg = colors.green,
  })

  hl("CmpItemKindText", {
    fg = colors.comment,
  })
end

return M
