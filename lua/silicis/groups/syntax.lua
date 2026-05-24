local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, config)

  hl("Comment", {
    fg = colors.comment,
    italic = config.styles.comments.italic,
  })

  hl("Keyword", {
    fg = colors.purple,
    bold = config.styles.keywords.bold,
  })

  hl("Function", {
    fg = colors.blue,
  })

  hl("String", {
    fg = colors.green,
  })

  hl("Type", {
    fg = colors.yellow,
  })

  hl("Constant", {
    fg = colors.orange,
  })

  hl("Identifier", {
    fg = colors.cyan,
  })

  hl("Error", {
    fg = colors.red,
    bold = true,
  })
end

return M
