local M = {}
local util = require("silicis.util")
local hl = util.hl

function M.setup(colors)

  hl("MasonHighlight", {
    fg = colors.aqua,
    bg = colors.bg_float,
  })

  hl("MasonBackdrop", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl("MasonHeader", {
    fg = colors.bg,
    bg = colors.yellow,
  })

  hl("MasonHighlightBlockBoldSecondary", {
    fg = colors.bg,
    bg = colors.yellow,
  })

  hl("MasonHighlightBlockSecondary", {
    fg = colors.bg,
    bg = colors.yellow,
  })

  hl("MasonHighlightBlockBold", {
    fg = colors.bg,
    bg = colors.aqua,
  })

  hl("MasonHighlightBlock", {
    fg = colors.bg,
    bg = colors.aqua,
  })

  hl("MasonHeaderSecondary", {
    fg = colors.bg,
    bg = colors.aqua,
  })
end

return M
