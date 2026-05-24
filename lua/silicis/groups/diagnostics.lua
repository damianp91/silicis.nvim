local utils = require "silicis.util"
local M = {}

function M.setup(colors, _)
  local hl = utils

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
