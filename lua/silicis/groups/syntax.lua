local M = {}

function M.setup(colors, config)
  local hl = vim.api.nvim_set_hl

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
end

return M
