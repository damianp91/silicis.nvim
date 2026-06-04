-- NOTE: Vim legacy syntax groups
local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, config)
  -- comments
  hl("Comment", {
    fg = colors.comment,
    italic = config.styles.comments.italic,
  })

  hl("SpecialComment", {
    fg = colors.comment,
    bold = true,
  })

  hl("Todo", {
    fg = colors.blue_light,
    bold = true,
  })

  -- keywords
  hl("Keyword", {
    fg = colors.red,
    bold = config.styles.keywords.bold,
  })

  hl("Conditional", {
    fg = colors.orange,
    bold = true,
  })

  hl("Repeat", {
    fg = colors.blue,
  })

  hl("Exception", {
    fg = colors.red,
  })

  hl("Operator", {
    fg = colors.orange,
  })

  -- functions
  hl("Function", {
    fg = colors.green_neon,
  })

  -- identifier
  hl("Identifier", {
    fg = colors.fg,
  })

  -- strings
  hl("String", {
    fg = colors.green,
  })

  hl("Character", {
    fg = colors.green,
  })

  hl("SpecialChar", {
    fg = colors.orange,
  })

  -- types
  hl("Type", {
    fg = colors.yellow,
  })

  hl("Structure", {
    fg = colors.yellow,
  })

  hl("Typedef", {
    fg = colors.orange,
  })

  -- constants
  hl("Constant", {
    fg = colors.blue,
  })

  hl("Boolean", {
    fg = colors.purple,
    bold = true,
  })

  hl("Number", {
    fg = colors.orange,
  })

  hl("Float", {
    fg = colors.orange,
  })

  -- preprocessor
  hl("PreProc", {
    fg = colors.red,
  })

  hl("Include", {
    fg = colors.red,
  })

  hl("IncSearch", {
    fg = colors.bg,
    bg = colors.orange,
  })

  hl("Define", {
    fg = colors.orange,
  })

  hl("Macro", {
    fg = colors.green,
  })

  -- winbar
  hl("WinBar", {
    fg = colors.fg,
    bg = colors.bg,
  })

  hl("WinBarNC", {
    fg = colors.comment,
    bg = colors.bg,
  })

  -- tag
  hl("Tag", {
    fg = colors.orange,
  })

  -- diagnostics
  hl("Error", {
    fg = colors.red_dark,
    bold = true,
  })

  hl("Warning", {
    fg = colors.yellow,
    bold = true,
  })

  -- special
  hl("Special", {
    fg = colors.orange_dark,
  })

  hl("Delimiter", {
    fg = colors.orange,
  })

  hl("Debug", {
    fg = colors.aqua_dark,
  })

  -- markdown
  hl("markdownH1", {
    fg = colors.yellow,
    bold = true,
  })

  hl("markdownH2", {
    fg = colors.orange,
    bold = true,
  })

  hl("markdownH3", {
    fg = colors.aqua,
    bold = true,
  })

  hl("markdownH4", {
    fg = colors.green,
    bold = true,
  })

  hl("markdownH5", {
    fg = colors.blue,
    bold = true,
  })

  hl("markdownH6", {
    fg = colors.purple,
    bold = true,
  })
end

return M
