local M = {}

function M.setup(colors, _)
  local hl = vim.api.nvim_set_hl

  -- Functions
  hl(0, "@lsp.type.function", {
    link = "@function",
  })

  hl(0, "@lsp.type.method", {
    link = "@method",
  })

  -- Variables
  hl(0, "@lsp.type.variable", {
    link = "@variable",
  })

  hl(0, "@lsp.type.parameter", {
    link = "@parameter",
  })

  hl(0, "@lsp.type.property", {
    link = "@property",
  })

  -- Types
  hl(0, "@lsp.type.class", {
    link = "@type",
  })

  hl(0, "@lsp.type.interface", {
    link = "@type",
  })

  hl(0, "@lsp.type.namespace", {
    fg = colors.yellow,
  })

  hl(0, "@lsp.type.enum", {
    fg = colors.orange,
  })

  hl(0, "@lsp.type.enumMember", {
    fg = colors.cyan,
  })

  -- Keywords
  hl(0, "@lsp.type.keyword", {
    link = "@keyword",
  })

  -- Comments
  hl(0, "@lsp.type.comment", {
    link = "@comment",
  })

  -- Modifiers
  hl(0, "@lsp.mod.readonly", {
    italic = true,
  })

  hl(0, "@lsp.mod.deprecated", {
    strikethrough = true,
    fg = colors.comment,
  })
end

return M
