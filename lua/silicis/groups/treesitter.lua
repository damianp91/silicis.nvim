local M = {}

local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, config)
  -- Keywords
  hl('@keyword', {
    fg = colors.purple,
    bold = config.styles.keywords.bold,
  })

  hl('@keyword.function', {
    link = '@keyword',
  })

  hl('@conditional', {
    link = '@keyword',
  })

  hl('@repeat', {
    link = '@keyword',
  })

  hl('@exception', {
    fg = colors.red,
  })

  -- Functions / Methods
  hl('@function', {
    fg = colors.blue,
  })

  hl('@function.call', {
    link = '@function',
  })

  hl('@function.builtin', {
    fg = colors.cyan,
  })

  hl('@method', {
    fg = colors.cyan,
  })

  hl('@method.call', {
    link = '@method',
  })

  hl('@constructor', {
    fg = colors.yellow,
  })

  -- Variables
  hl('@variable', {
    fg = colors.fg,
  })

  hl('@variable.builtin', {
    fg = colors.red,
    italic = true,
  })

  hl('@parameter', {
    fg = colors.fg_dark,
    italic = true,
  })

  hl('@field', {
    fg = colors.cyan,
  })

  hl('@property', {
    link = '@field',
  })

  -- Types / Modules
  hl('@type', {
    fg = colors.yellow,
  })

  hl('@type.builtin', {
    fg = colors.orange,
  })

  hl('@attribute', {
    fg = colors.orange,
  })

  hl('@namespace', {
    fg = colors.blue,
  })

  hl('@module', {
    link = '@namespace',
  })

  -- Constants / Numbers / Booleans
  hl('@constant', {
    fg = colors.orange,
  })

  hl('@constant.builtin', {
    fg = colors.red,
  })

  hl('@boolean', {
    fg = colors.orange,
  })

  hl('@number', {
    fg = colors.orange,
  })

  -- Strings
  hl('@string', {
    fg = colors.green,
  })

  hl('@string.escape', {
    fg = colors.orange,
  })

  hl('@string.regex', {
    fg = colors.orange,
  })

  hl('@string.special', {
    fg = colors.cyan,
  })

  -- Operators / Punctuation
  hl('@operator', {
    fg = colors.fg,
  })

  hl('@punctuation.delimiter', {
    fg = colors.fg_dark,
  })

  hl('@punctuation.bracket', {
    fg = colors.fg_dark,
  })

  -- Comments
  hl('@comment', {
    fg = colors.comment,
    italic = config.styles.comments.italic,
  })

  hl('@comment.todo', {
    fg = colors.yellow,
    bold = true,
  })

  hl('@comment.warning', {
    fg = colors.orange,
    bold = true,
  })

  hl('@comment.error', {
    fg = colors.red,
    bold = true,
  })

  hl('@comment.note', {
    fg = colors.blue,
    bold = true,
  })

  -- HTML / XML / JSX
  hl('@tag', {
    fg = colors.red,
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
    fg = colors.red,
  })

  hl('@diff.delta', {
    fg = colors.blue,
  })

  -- Markup / Markdown
  hl('@markup.heading', {
    fg = colors.yellow,
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
end

return M
