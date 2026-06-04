local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, _)
  -- Diagnostics
  hl("DiagnosticError", {
    fg = colors.red_dark,
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
  })

  hl("LspReferenceWrite", {
    fg = colors.yellow_dark,
  })

  -- Codelens
  hl("LspCodeLens", {
    fg = colors.comment,
    italic = true,
  })

  hl("LspCodeLensSeparator", {
    fg = colors.border,
  })

  -- Helpers
  hl("LspSignatureActiveParameter", {
    fg = colors.orange,
    bold = true,
  })

  -- Hint
  hl("LspInlayHint", {
    fg = colors.comment,
    italic = true,
  })

  -- Types
  hl("@lsp.type.decorator", {
    fg = colors.aqua,
  })
end

return M
