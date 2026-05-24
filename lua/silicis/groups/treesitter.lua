local M = {}

function M.setup(colors, config)
  local hl = require("util.hl")

  -- Keywords
  hl("@keyword", {
    fg = colors.purple,
    bold = config.styles.keywords.bold,
  })

  hl("@keyword.function", {
    fg = colors.purple,
    bold = true,
  })

  hl("@conditional", {
    fg = colors.purple,
  })

  hl("@repeat", {
    fg = colors.purple,
  })

  -- Functions
  hl("@function", {
    fg = colors.blue,
  })

  hl("@function.call", {
    fg = colors.blue,
  })

  hl("@method", {
    fg = colors.cyan,
  })

  hl("@method.call", {
    fg = colors.cyan,
  })

  -- Variables
  hl("@variable", {
    fg = colors.fg,
  })

  hl("@parameter", {
    fg = colors.fg_dark,
    italic = true,
  })

  hl("@field", {
    fg = colors.cyan,
  })

  hl("@property", {
    fg = colors.cyan,
  })

  -- Types
  hl("@type", {
    fg = colors.yellow,
  })

  hl("@type.builtin", {
    fg = colors.orange,
  })

  -- Strings
  hl("@string", {
    fg = colors.green,
  })

  hl("@string.escape", {
    fg = colors.orange,
  })

  -- Constants
  hl("@constant", {
    fg = colors.orange,
  })

  hl("@constant.builtin", {
    fg = colors.red,
  })

  -- Comments
  hl("@comment", {
    fg = colors.comment,
    italic = config.styles.comments.italic,
  })

  -- Operators
  hl("@operator", {
    fg = colors.fg,
  })

  -- Punctuation
  hl("@punctuation.delimiter", {
    fg = colors.fg_dark,
  })

  hl("@punctuation.bracket", {
    fg = colors.fg_dark,
  })
end

return M
