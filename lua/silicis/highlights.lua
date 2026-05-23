local M = {}

function M.setup()
  local colors = require("silicis.colors").setup()
  local config = require("silicis.config").options

  local hl = vim.api.nvim_set_hl

  -- =========================
  -- Editor
  -- =========================

  hl(0, "Normal", {
    fg = colors.fg,
    bg = config.transparent and "NONE" or colors.bg,
  })

  hl(0, "NormalFloat", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl(0, "CursorLine", {
    bg = colors.cursor,
  })

  hl(0, "CursorLineNr", {
    fg = colors.yellow,
    bold = true,
  })

  hl(0, "LineNr", {
    fg = colors.comment,
  })

  hl(0, "Visual", {
    bg = colors.selection,
  })

  hl(0, "FloatBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  -- =========================
  -- Syntax
  -- =========================

  hl(0, "Comment", {
    fg = colors.comment,
    italic = config.styles.comments.italic,
  })

  hl(0, "Keyword", {
    fg = colors.purple,
    bold = config.styles.keywords.bold,
  })

  hl(0, "Function", {
    fg = colors.blue,
  })

  hl(0, "String", {
    fg = colors.green,
  })

  hl(0, "Type", {
    fg = colors.yellow,
  })

  hl(0, "Constant", {
    fg = colors.orange,
  })

  hl(0, "Identifier", {
    fg = colors.cyan,
  })

  hl(0, "Error", {
    fg = colors.red,
    bold = true,
  })

  -- =========================
  -- Diagnostics
  -- =========================

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
