local M = {}

function M.setup(colors, _)
  local hl = require("util.hl")

  -- Functions
  hl("@lsp.type.function", {
    link = "@function",
  })

  hl("@lsp.type.method", {
    link = "@method",
  })

  -- Variables
  hl("@lsp.type.variable", {
    link = "@variable",
  })

  hl("@lsp.type.parameter", {
    link = "@parameter",
  })

  hl("@lsp.type.property", {
    link = "@property",
  })

  -- Types
  hl("@lsp.type.class", {
    link = "@type",
  })

  hl("@lsp.type.interface", {
    link = "@type",
  })

  hl("@lsp.type.namespace", {
    fg = colors.yellow,
  })

  hl("@lsp.type.enum", {
    fg = colors.orange,
  })

  hl("@lsp.type.enumMember", {
    fg = colors.cyan,
  })

  -- Keywords
  hl("@lsp.type.keyword", {
    link = "@keyword",
  })

  -- Comments
  hl("@lsp.type.comment", {
    link = "@comment",
  })

  -- Modifiers
  hl("@lsp.mod.readonly", {
    italic = true,
  })

  hl("@lsp.mod.deprecated", {
    strikethrough = true,
    fg = colors.comment,
  })
end

return M
