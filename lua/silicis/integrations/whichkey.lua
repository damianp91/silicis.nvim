local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, config)
  local whichkey_transparent = config.transparent.enabled
    and config.transparent.whichkey

  -- Main popup
  hl("WhichKeyNormal", {
    fg = colors.fg,
    bg = util.get_bg(colors.bg_float, whichkey_transparent),
  })

  hl("WhichKeyBorder", {
    fg = colors.border,
    bg = util.get_bg(colors.bg_float, whichkey_transparent),
  })

  hl("WhichKeyTitle", {
    fg = colors.fg,
    bg = util.get_bg(colors.bg_float, whichkey_transparent),
    bold = true,
  })

  -- Keys
  hl("WhichKey", {
    fg = colors.green,
    bold = true,
  })

  hl("WhichKeySeparator", {
    fg = colors.fg_dark,
  })

  hl("WhichKeyGroup", {
    fg = colors.yellow,
  })

  hl("WhichKeyDesc", {
    fg = colors.fg_dark,
  })

  hl("WhichKeyValue", {
    fg = colors.blue_light,
  })

  -- Floating helpers
  hl("WhichKeyFloat", {
    bg = colors.bg_float,
  })

  -- icons
  hl("WhichKeyIconBlue", {
    fg = colors.blue,
  })

  hl("WhichKeyIconGreen", {
    fg = colors.green,
  })

  hl("WhichKeyIconYellow", {
    fg = colors.yellow,
  })

  hl("WhichKeyIconOrange", {
    fg = colors.orange,
  })

  hl("WhichKeyIconRed", {
    fg = colors.red,
  })

  hl("WhichKeyIconPurple", {
    fg = colors.purple,
  })

  hl("WhichKeyIconCyan", {
    fg = colors.aqua,
  })

  hl("WhichKeyIconGrey", {
    fg = colors.comment,
  })

  hl("WhichKeyIcon", {
    fg = colors.blue_light,
  })
end

return M
