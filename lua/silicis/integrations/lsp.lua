local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, config)

  local float_bg = util.darken(colors.bg_float, 0.05)

  local float_transparent =
      config.transparent.enabled
      and config.transparent.floating_windows

  -- Floating windows
  hl("NormalFloat", {
    fg = colors.fg,
    bg = util.get_bg(float_bg, float_transparent),
  })

  hl("FloatBorder", {
    fg = colors.border,
    bg = util.get_bg(float_bg, float_transparent),
  })

  hl("FloatTitle", {
    fg = colors.blue,
    bg = util.get_bg(float_bg, float_transparent),
    bold = true,
  })

  -- Diagnostics
  hl("DiagnosticError", {
    fg = colors.red,
  })

  hl("DiagnosticWarn", {
    fg = colors.yellow,
  })

  hl("DiagnosticInfo", {
    fg = colors.blue,
  })

  hl("DiagnosticHint", {
    fg = colors.cyan,
  })

  -- Virtual text
  hl("DiagnosticVirtualTextError", {
    fg = util.lighten(colors.red, 0.15),
    bg = util.blend(colors.red, colors.bg, 0.08),
  })

  hl("DiagnosticVirtualTextWarn", {
    fg = util.lighten(colors.yellow, 0.10),
    bg = util.blend(colors.yellow, colors.bg, 0.06),
  })

  hl("DiagnosticVirtualTextInfo", {
    fg = util.lighten(colors.blue, 0.10),
    bg = util.blend(colors.blue, colors.bg, 0.06),
  })

  hl("DiagnosticVirtualTextHint", {
    fg = util.lighten(colors.cyan, 0.10),
    bg = util.blend(colors.cyan, colors.bg, 0.06),
  })

  -- Underlines
  hl("DiagnosticUnderlineError", {
    undercurl = true,
    sp = colors.red,
  })

  hl("DiagnosticUnderlineWarn", {
    undercurl = true,
    sp = colors.yellow,
  })

  hl("DiagnosticUnderlineInfo", {
    undercurl = true,
    sp = colors.blue,
  })

  hl("DiagnosticUnderlineHint", {
    undercurl = true,
    sp = colors.cyan,
  })

  -- References
  hl("LspReferenceText", {
    bg = util.blend(colors.blue, colors.bg, 0.10),
  })

  hl("LspReferenceRead", {
    bg = util.blend(colors.green, colors.bg, 0.10),
  })

  hl("LspReferenceWrite", {
    bg = util.blend(colors.red, colors.bg, 0.10),
  })
end

return M
