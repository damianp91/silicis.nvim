local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, _)
  hl("DiagnosticError", {
    fg = colors.red_dark,
  })

  hl("DiagnosticWarn", {
    fg = colors.yellow_dark,
  })

  hl("DiagnosticInfo", {
    fg = colors.blue,
  })

  hl("DiagnosticHint", {
    fg = colors.yellow,
  })

  -- Virtual text
  hl("DiagnosticVirtualTextError", {
    fg = colors.red_dark,
    bg = util.blend(colors.red, colors.bg, 0.08),
  })

  hl("DiagnosticVirtualTextWarn", {
    fg = colors.yellow_dark,
    bg = util.blend(colors.yellow, colors.bg, 0.06),
  })

  hl("DiagnosticVirtualTextInfo", {
    fg = colors.blue,
    bg = util.blend(colors.blue, colors.bg, 0.06),
  })

  hl("DiagnosticVirtualTextHint", {
    fg = colors.yellow,
    bg = util.blend(colors.yellow, colors.bg, 0.06),
  })

  -- Underlines
  hl("DiagnosticUnderlineError", {
    undercurl = true,
    sp = colors.red_dark,
  })

  hl("DiagnosticUnderlineWarn", {
    undercurl = true,
    sp = colors.yellow_dark,
  })

  hl("DiagnosticUnderlineInfo", {
    undercurl = true,
    sp = colors.blue,
  })

  hl("DiagnosticUnderlineHint", {
    undercurl = true,
    sp = colors.yellow,
  })

  hl("DiagnosticSignError", {
    fg = colors.red_dark,
    bg = util.blend(colors.red_dark, colors.bg, 0.08),
  })

  hl("DiagnosticSignWarn", {
    fg = colors.yellow_dark,
    bg = util.blend(colors.yellow_dark, colors.bg, 0.08),
  })

  hl("DiagnosticSignInfo", {
    fg = colors.blue,
    bg = util.blend(colors.blue, colors.bg, 0.08),
  })

  hl("DiagnosticSignHint", {
    fg = colors.yellow,
    bg = util.blend(colors.yellow, colors.bg, 0.08),
  })
end

return M
