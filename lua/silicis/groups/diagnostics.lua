local M = {}

function M.setup(colors, _)
  local hl = vim.api.nvim_set_hl

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
end

return M
