local M = {}

local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, config)
  -- Keywords
  hl('@keyword', {
    fg = colors.red_dark,
    bold = config.styles.keywords.bold,
  })

  hl('@keyword.function', {
    fg = colors.red,
    bold = true,
  })

  hl('@conditional', {
    fg = colors.red,
    bold = true,
  })

  hl('@repeat', {
    fg = colors.blue,
  })

  hl('@exception', {
    fg = colors.red_dark,
  })

  -- Functions / Methods
  hl('@function', {
    fg = colors.green_neon,
  })

  hl('@function.call', {
    fg = colors.yellow_dark,
  })

  hl('@function.builtin', {
    fg = colors.orange_dark,
  })

  hl('@method', {
    fg = colors.green_neon,
  })

  hl('@method.call', {
    link = '@method',
  })

  hl('@constructor', {
    fg = colors.yellow,
  })

  -- Variables
  hl('@variable', {
    fg = colors.fg_dark,
  })

  hl('@variable.builtin', {
    fg = colors.orange,
    italic = true,
  })

  hl("@variable.member", {
    fg = colors.blue_light,
  })

  hl("@variable.parameter", {
    link = "@parameter",
  })

  hl('@parameter', {
    fg = colors.blue,
    italic = true,
  })

  hl('@field', {
    fg = colors.blue_light,
  })

  hl('@property', {
    link = '@field',
  })

  -- Types / Modules
  hl('@type', {
    fg = colors.yellow,
  })

  hl('@type.builtin', {
    fg = colors.yellow,
  })

  hl('@attribute', {
    fg = colors.green,
  })

  hl('@namespace', {
    fg = colors.blue_light,
  })

  hl('@module', {
    link = '@namespace',
  })

  -- Constants / Numbers / Booleans
  hl('@constant', {
    fg = colors.purple_dark,
  })

  hl('@constant.builtin', {
    fg = colors.orange,
  })

  hl('@boolean', {
    fg = colors.purple,
    bold = true
  })

  hl('@number', {
    fg = colors.purple,
  })

  hl('@number.float', {
    link = '@number'
  })

  -- Strings
  hl('@string', {
    fg = colors.green,
  })

  hl('@string.escape', {
    fg = colors.orange_dark,
  })

  hl('@string.regex', {
    fg = colors.green_neon,
  })

  hl('@string.special', {
    fg = colors.orange,
  })

  hl('@string.special.url', {
    fg = colors.blue_dark,
  })

  -- Operators / Punctuation
  hl('@operator', {
    fg = colors.orange,
  })

  -- special operators
  hl("@keyword.operator", {
    fg = colors.orange,
    italic = true,
  })

  hl('@punctuation.delimiter', {
    fg = colors.orange,
  })

  hl('@punctuation.bracket', {
    fg = colors.orange,
  })

  hl("@punctuation.special", {
    fg = colors.orange,
  })

  -- NOTE: desde aca se retoma
  -- Comments
  hl('@comment', {
    fg = colors.comment,
    italic = config.styles.comments.italic,
  })

  hl('@comment.todo', {
    fg = colors.aqua,
    bold = true,
  })

  hl('@comment.warning', {
    fg = colors.yellow,
    bold = true,
  })

  hl('@comment.error', {
    fg = colors.red,
    bold = true,
  })

  hl('@comment.note', {
    fg = colors.aqua,
    bold = true,
  })

  hl('@comment.info', {
    fg = colors.green_neon,
    italic = true,
  })

  hl('@comment.test', {
    fg = colors.green,
    italic = true,
  })

  -- HTML / XML / JSX
  hl('@tag', {
    fg = colors.orange,
  })

  hl('@tag.attribute', {
    fg = colors.yellow,
  })

  hl('@tag.delimiter', {
    fg = colors.fg_dark,
  })

  -- Diff
  hl('@diff.plus', {
    fg = colors.green,
  })

  hl('@diff.minus', {
    fg = colors.red_dark,
  })

  hl('@diff.delta', {
    fg = colors.orange_dark,
  })

  hl("DiffAdd", {
    bg = util.blend(colors.green, colors.bg, 0.15),
  })

  hl("DiffDelete", {
    bg = util.blend(colors.red_dark, colors.bg, 0.15),
  })

  hl("DiffChange", {
    bg = util.blend(colors.orange_dark, colors.bg, 0.12),
  })

  hl("DiffText", {
    bg = util.blend(colors.yellow_dark, colors.bg, 0.20),
  })

  -- Markup / Markdown
  hl('@markup.heading', {
    fg = colors.yellow_dark,
    bold = true,
  })

  hl('@markup.strong', {
    bold = true,
  })

  hl('@markup.italic', {
    italic = true,
  })

  hl('@markup.link', {
    fg = colors.blue,
    underline = true,
  })

  hl('@markup.link.url', {
    fg = colors.cyan,
    underline = true,
  })

  hl('@markup.raw', {
    fg = colors.green,
  })

  hl('@markup.quote', {
    fg = colors.comment,
    italic = true,
  })

  hl('@markup.math', {
    fg = colors.yellow,
  })

  hl('@markup.list', {
    fg = colors.orange,
  })

  hl('@markup.list.checked', {
    fg = colors.green,
  })

  hl('@markup.list.unchecked', {
    fg = colors.comment,
  })

  hl('@markdown.list.label', {
    fg = colors.orange,
  })

  hl('@markdown.environment', {
    fg = colors.aqua,
  })

  hl('@markdown.environment.name', {
    fg = colors.yellow,
  })
end

return M
