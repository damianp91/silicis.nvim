local M = {}

local util = require("silicis.util")
local hl = util.hl

function M.setup()

  -- Types
  hl("@lsp.type.type", {
    link = "@type",
  })

  hl("@lsp.type.class", {
    link = "@type",
  })

  hl("@lsp.type.struct", {
    link = "@type",
  })

  hl("@lsp.type.interface", {
    link = "@type",
  })

  hl("@lsp.type.enum", {
    link = "@type",
  })

  hl("@lsp.type.typeParameter", {
    link = "@type",
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

  hl("@lsp.type.enumMember", {
    link = "@constant",
  })

  -- Functions
  hl("@lsp.type.function", {
    link = "@function",
  })

  hl("@lsp.type.method", {
    link = "@method",
  })

  -- Namespaces / Modules
  hl("@lsp.type.namespace", {
    link = "@namespace",
  })

  -- Keywords
  hl("@lsp.type.keyword", {
    link = "@keyword",
  })

  -- Strings / Numbers
  hl("@lsp.type.string", {
    link = "@string",
  })

  hl("@lsp.type.number", {
    link = "@number",
  })

  hl("@lsp.type.boolean", {
    link = "@boolean",
  })

  -- Comments
  hl("@lsp.type.comment", {
    link = "@comment",
  })

  -- Modifiers
  hl("@lsp.mod.readonly", {
    italic = true,
  })

  hl("@lsp.mod.static", {
    bold = true,
  })

  hl("@lsp.mod.deprecated", {
    strikethrough = true,
  })

  hl("@lsp.mod.documentation", {
    italic = true,
  })

  hl("@lsp.mod.defaultLibrary", {
    italic = true,
  })
end

return M
