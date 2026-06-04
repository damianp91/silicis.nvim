local M = {}
local util = require("silicis.util")

function M.setup(colors, config)
  if not config.terminal_colors then
    return
  end
  vim.g.terminal_color_0 = colors.bg
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_5 = colors.purple
  vim.g.terminal_color_6 = colors.aqua
  vim.g.terminal_color_7 = colors.fg

  vim.g.terminal_color_8 = colors.comment
  vim.g.terminal_color_9 = util.lighten(colors.red, 0.18)
  vim.g.terminal_color_10 = colors.green
  vim.g.terminal_color_11 = colors.yellow
  vim.g.terminal_color_12 = colors.blue
  vim.g.terminal_color_13 = colors.purple
  vim.g.terminal_color_14 = colors.aqua
  vim.g.terminal_color_15 = colors.fg_dark
end

return M
