local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, _)

  -- nvim-cmp
  hl("CmpBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  hl("CmpDocumentation", {
    fg = colors.fg,
    bg = colors.bg,
  })

  hl("CmpDocumentationBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  hl("CmpDocBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  -- abbr
  hl("CmpItemAbbr", {
    fg = colors.fg,
  })

  hl("CmpItemAbbrMatch", {
    fg = colors.yellow,
    bold = true,
  })

  hl("CmpItemAbbrMatchFuzzy", {
    fg = colors.orange,
  })

  hl("CmpItemMenu", {
    fg = colors.comment,
  })

  hl("CmpItemAbbrDeprecated", {
    fg = colors.comment,
    strikethrough = true,
  })

  -- Item kinds
  hl("CmpItemKindFunction", {
    fg = colors.yellow,
  })

  hl("CmpItemKindMethod", {
    fg = colors.yellow,
  })

  hl("CmpItemKindVariable", {
    fg = colors.fg_light,
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
    fg = colors.red,
  })

  hl("CmpItemKindSnippet", {
    fg = colors.green,
  })

  hl("CmpItemKindText", {
    fg = colors.comment,
  })
end

return M
