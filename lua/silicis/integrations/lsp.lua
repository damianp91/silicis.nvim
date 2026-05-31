local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, _)
  -- Diagnostics
  hl("DiagnosticError", {
    fg = colors.red,
  })

  hl("DiagnosticWarn", {
    fg = colors.yellow,
  })

  hl("DiagnosticInfo", {
    fg = colors.aqua,
  })

  hl("DiagnosticHint", {
    fg = colors.green,
  })

  -- References
  hl("LspReferenceText", {
    fg = colors.yellow_dark,
  })

  hl("LspReferenceRead", {
    fg = colors.yellow_dark,
    italic = true,
  })

  hl("LspReferenceWrite", {
    fg = colors.yellow_dark,
    italic = true,
  })
end

return M
