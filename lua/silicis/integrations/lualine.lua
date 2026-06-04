local M = {}

local util = require("silicis.util")
local hl = util.hl

function M.setup(colors)
  local section_bg = util.darken(colors.bg_float, 0.08)
  local inactive_bg = util.darken(colors.bg, 0.10)

  hl("lualine_a_normal", {
    fg = colors.bg,
    bg = colors.yellow,
    bold = true,
  })

  hl("lualine_b_normal", {
    fg = colors.fg,
    bg = section_bg,
  })

  hl("lualine_c_normal", {
    fg = colors.fg_dark,
    bg = colors.red,
  })

  hl("lualine_a_insert", {
    fg = colors.bg,
    bg = colors.aqua,
    bold = true,
  })

  hl("lualine_a_visual", {
    fg = colors.bg,
    bg = colors.purple,
    bold = true,
  })

  hl("lualine_a_replace", {
    fg = colors.bg,
    bg = colors.red,
    bold = true,
  })

  hl("lualine_a_command", {
    fg = colors.bg,
    bg = colors.green,
    bold = true,
  })

  hl("lualine_a_inactive", {
    fg = colors.comment,
    bg = inactive_bg,
  })

  hl("lualine_b_inactive", {
    fg = colors.comment,
    bg = inactive_bg,
  })

  hl("lualine_c_inactive", {
    fg = colors.comment,
    bg = colors.bg,
  })
end

return M
