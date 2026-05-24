local M = {}

local util = require("silicis.util")

function M.setup(colors, config)
  local hl = vim.api.nvim_set_hl

  local float_bg = util.darken(colors.bg_float, 0.05)

  local float_transparent =
      config.transparent.enabled
      and config.transparent.floating_windows

  -- Floating windows
  hl(0, "NormalFloat", {
    fg = colors.fg,
    bg = util.get_bg(float_bg, float_transparent),
  })

  hl(0, "FloatBorder", {
    fg = colors.border,
    bg = util.get_bg(float_bg, float_transparent),
  })

  hl(0, "FloatTitle", {
    fg = colors.blue,
    bg = float_bg,
    bold = true,
  })

  -- Diagnostics
  hl(0, "DiagnosticError", {
    fg = colors.red,
  })

  hl(0, "DiagnosticWarn", {
    fg = colors.yellow,
  })

  hl(0, "DiagnosticInfo", {
    fg = colors.blue,
  })

  hl(0, "DiagnosticHint", {
    fg = colors.cyan,
  })

  -- Virtual text
  hl(0, "DiagnosticVirtualTextError", {
    fg = util.lighten(colors.red, 0.15),
    bg = util.blend(colors.red, colors.bg, 0.08),
  })

  hl(0, "DiagnosticVirtualTextWarn", {
    fg = util.lighten(colors.yellow, 0.10),
    bg = util.blend(colors.yellow, colors.bg, 0.06),
  })

  hl(0, "DiagnosticVirtualTextInfo", {
    fg = util.lighten(colors.blue, 0.10),
    bg = util.blend(colors.blue, colors.bg, 0.06),
  })

  hl(0, "DiagnosticVirtualTextHint", {
    fg = util.lighten(colors.cyan, 0.10),
    bg = util.blend(colors.cyan, colors.bg, 0.06),
  })

  -- Underlines
  hl(0, "DiagnosticUnderlineError", {
    undercurl = true,
    sp = colors.red,
  })

  hl(0, "DiagnosticUnderlineWarn", {
    undercurl = true,
    sp = colors.yellow,
  })

  hl(0, "DiagnosticUnderlineInfo", {
    undercurl = true,
    sp = colors.blue,
  })

  hl(0, "DiagnosticUnderlineHint", {
    undercurl = true,
    sp = colors.cyan,
  })

  -- References
  hl(0, "LspReferenceText", {
    bg = util.blend(colors.blue, colors.bg, 0.10),
  })

  hl(0, "LspReferenceRead", {
    bg = util.blend(colors.green, colors.bg, 0.10),
  })

  hl(0, "LspReferenceWrite", {
    bg = util.blend(colors.red, colors.bg, 0.10),
  })
end

return M
