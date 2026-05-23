local M = {}
local util = require("silicis.util")

function M.setup(colors, _)
  local hl = vim.api.nvim_set_hl
  local menu_bg = util.darken(colors.bg_float, 0.08)
  local sel_bg = util.blend(colors.blue, colors.bg, 0.12)

  -- Completion menu
  hl(0, "Pmenu", {
    fg = colors.fg,
    bg = menu_bg,
  })

  hl(0, "PmenuSel", {
    fg = colors.fg,
    bg = sel_bg,
    bold = true,
  })

  hl(0, "PmenuSbar", {
    bg = colors.bg_alt,
  })

  hl(0, "PmenuThumb", {
    bg = colors.border,
  })

  -- nvim-cmp
  hl(0, "CmpBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  hl(0, "CmpDocBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  hl(0, "CmpPmenu", {
    bg = colors.bg_float,
  })

  -- Item kinds
  hl(0, "CmpItemKindFunction", {
    fg = colors.blue,
  })

  hl(0, "CmpItemKindMethod", {
    fg = colors.cyan,
  })

  hl(0, "CmpItemKindVariable", {
    fg = colors.fg,
  })

  hl(0, "CmpItemKindField", {
    fg = colors.cyan,
  })

  hl(0, "CmpItemKindProperty", {
    fg = colors.cyan,
  })

  hl(0, "CmpItemKindClass", {
    fg = colors.yellow,
  })

  hl(0, "CmpItemKindInterface", {
    fg = colors.yellow,
  })

  hl(0, "CmpItemKindModule", {
    fg = colors.orange,
  })

  hl(0, "CmpItemKindKeyword", {
    fg = colors.purple,
  })

  hl(0, "CmpItemKindSnippet", {
    fg = colors.green,
  })

  hl(0, "CmpItemKindText", {
    fg = colors.comment,
  })
end

return M
