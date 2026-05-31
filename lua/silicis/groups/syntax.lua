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
    fg = colors.blue_dark,
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

  -- preprocesor
  hl("PreProc", {
    fg = colors.red,
  })

  hl("Include", {
    fg = colors.red,
  })

  hl("Define", {
    fg = colors.orange,
  })

  hl("Macro", {
    fg = colors.green,
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

  hl("WarningMsg", {
    fg = colors.yellow_dark,
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
end

return M
