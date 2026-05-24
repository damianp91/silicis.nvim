local M = {}

local util = require("silicis.util")

function M.setup(colors, config)
  local hl = vim.api.nvim_set_hl
  local transparent = config.transparent.enabled

  hl(0, "Normal", {
    fg = colors.fg,
    bg = util.get_bg(colors.bg, transparent),
  })

  hl(0, "NormalFloat", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl(0, "NormalNC", {
    fg = colors.fg_dark,
    bg = util.get_bg(colors.bg_dark, transparent),
  })

  hl(0, "FloatBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  hl(0, "CursorLine", {
    bg = colors.cursor,
  })

  hl(0, "CursorLineNr", {
    fg = colors.yellow,
    bold = true,
  })

  hl(0, "LineNr", {
    fg = colors.comment,
  })

  hl(0, "Visual", {
    bg = colors.selection,
  })

  hl(0, "StatusLine", {
    fg = colors.fg,
    bg = colors.bg_alt,
  })

  hl(0, "StatusLineNC", {
    fg = colors.comment,
    bg = colors.bg_dark,
  })

  hl(0, "SignColumn", {
    bg = util.get_bg(colors.bg, transparent),
  })
end

return M
