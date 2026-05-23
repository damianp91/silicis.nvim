local M = {}

local util = require("silicis.util")

function M.setup(colors, _)
  local hl = vim.api.nvim_set_hl

  local popup_bg = util.darken(colors.bg_float, 0.05)
  local title_bg = util.blend(colors.blue, colors.bg, 0.18)

  -- Main popup
  hl(0, "WhichKeyNormal", {
    fg = colors.fg,
    bg = popup_bg,
  })

  hl(0, "WhichKeyBorder", {
    fg = colors.border,
    bg = popup_bg,
  })

  hl(0, "WhichKeyTitle", {
    fg = colors.fg,
    bg = title_bg,
    bold = true,
  })

  -- Keys
  hl(0, "WhichKey", {
    fg = colors.blue,
    bold = true,
  })

  hl(0, "WhichKeySeparator", {
    fg = colors.comment,
  })

  hl(0, "WhichKeyGroup", {
    fg = colors.yellow,
  })

  hl(0, "WhichKeyDesc", {
    fg = colors.fg,
  })

  hl(0, "WhichKeyValue", {
    fg = colors.cyan,
  })

  -- Floating helpers
  hl(0, "WhichKeyFloat", {
    bg = popup_bg,
  })
end

return M
