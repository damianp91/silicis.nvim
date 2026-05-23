local M = {}

function M.setup(colors, config)
  local hl = vim.api.nvim_set_hl

  -- Keywords
  hl(0, "@keyword", {
    fg = colors.purple,
    bold = config.styles.keywords.bold,
  })

  hl(0, "@keyword.function", {
    fg = colors.purple,
    bold = true,
  })

  hl(0, "@conditional", {
    fg = colors.purple,
  })

  hl(0, "@repeat", {
    fg = colors.purple,
  })

  -- Functions
  hl(0, "@function", {
    fg = colors.blue,
  })

  hl(0, "@function.call", {
    fg = colors.blue,
  })

  hl(0, "@method", {
    fg = colors.cyan,
  })

  hl(0, "@method.call", {
    fg = colors.cyan,
  })

  -- Variables
  hl(0, "@variable", {
    fg = colors.fg,
  })

  hl(0, "@parameter", {
    fg = colors.fg_dark,
    italic = true,
  })

  hl(0, "@field", {
    fg = colors.cyan,
  })

  hl(0, "@property", {
    fg = colors.cyan,
  })

  -- Types
  hl(0, "@type", {
    fg = colors.yellow,
  })

  hl(0, "@type.builtin", {
    fg = colors.orange,
  })

  -- Strings
  hl(0, "@string", {
    fg = colors.green,
  })

  hl(0, "@string.escape", {
    fg = colors.orange,
  })

  -- Constants
  hl(0, "@constant", {
    fg = colors.orange,
  })

  hl(0, "@constant.builtin", {
    fg = colors.red,
  })

  -- Comments
  hl(0, "@comment", {
    fg = colors.comment,
    italic = config.styles.comments.italic,
  })

  -- Operators
  hl(0, "@operator", {
    fg = colors.fg,
  })

  -- Punctuation
  hl(0, "@punctuation.delimiter", {
    fg = colors.fg_dark,
  })

  hl(0, "@punctuation.bracket", {
    fg = colors.fg_dark,
  })
end

return M
