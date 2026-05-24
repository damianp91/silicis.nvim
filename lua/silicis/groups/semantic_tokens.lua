local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, _)

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

  hl("@lsp.type.namespace", {
    link = "@namespace",
  })

  hl("@lsp.type.type", {
    link = "@type",
  })

  hl("@lsp.type.class", {
    link = "@type",
  })

  hl("@lsp.type.enum", {
    link = "@type",
  })

  hl("@lsp.type.interface", {
    link = "@type",
  })

  hl("@lsp.type.struct", {
    link = "@type",
  })

  hl("@lsp.type.parameter", {
    link = "@parameter",
  })

  hl("@lsp.type.variable", {
    link = "@variable",
  })

  hl("@lsp.type.property", {
    link = "@property",
  })

  hl("@lsp.type.function", {
    link = "@function",
  })

  hl("@lsp.type.method", {
    link = "@method",
  })

  hl("@lsp.type.keyword", {
    link = "@keyword",
  })
end

return M
