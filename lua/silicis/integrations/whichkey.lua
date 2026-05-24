local M = {}

local util = require("silicis.util")

function M.setup(colors, _)
  local hl = require("util.hl")

  local popup_bg = util.darken(colors.bg_float, 0.05)
  local title_bg = util.blend(colors.blue, colors.bg, 0.18)

  -- Main popup
  hl("WhichKeyNormal", {
    fg = colors.fg,
    bg = popup_bg,
  })

  hl("WhichKeyBorder", {
    fg = colors.border,
    bg = popup_bg,
  })

  hl("WhichKeyTitle", {
    fg = colors.fg,
    bg = title_bg,
    bold = true,
  })

  -- Keys
  hl("WhichKey", {
    fg = colors.blue,
    bold = true,
  })

  hl("WhichKeySeparator", {
    fg = colors.comment,
  })

  hl("WhichKeyGroup", {
    fg = colors.yellow,
  })

  hl("WhichKeyDesc", {
    fg = colors.fg,
  })

  hl("WhichKeyValue", {
    fg = colors.cyan,
  })

  -- Floating helpers
  hl("WhichKeyFloat", {
    bg = popup_bg,
  })
end

return M
