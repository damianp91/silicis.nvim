local M = {}

function M.setup(colors)
  vim.g.terminal_color_0 = colors.bg_dark
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_5 = colors.purple
  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_7 = colors.fg

  vim.g.terminal_color_8 = colors.comment
  vim.g.terminal_color_9 = colors.red
  vim.g.terminal_color_10 = colors.green
  vim.g.terminal_color_11 = colors.yellow
  vim.g.terminal_color_12 = colors.blue
  vim.g.terminal_color_13 = colors.purple
  vim.g.terminal_color_14 = colors.cyan
  vim.g.terminal_color_15 = colors.fg_dark
end

return M
