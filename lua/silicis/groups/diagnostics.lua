local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, _)

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
end

return M
