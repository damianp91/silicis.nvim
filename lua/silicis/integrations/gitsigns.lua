local M = {}

local util = require("silicis.util")

function M.setup(colors, _)
  local hl = vim.api.nvim_set_hl

  local add_bg = util.blend(colors.green, colors.bg, 0.10)
  local change_bg = util.blend(colors.blue, colors.bg, 0.10)
  local delete_bg = util.blend(colors.red, colors.bg, 0.10)

  -- GitSigns
  hl(0, "GitSignsAdd", {
    fg = colors.green,
  })

  hl(0, "GitSignsChange", {
    fg = colors.blue,
  })

  hl(0, "GitSignsDelete", {
    fg = colors.red,
  })

  -- Diff highlights
  hl(0, "DiffAdd", {
    bg = add_bg,
  })

  hl(0, "DiffChange", {
    bg = change_bg,
  })

  hl(0, "DiffDelete", {
    bg = delete_bg,
  })

  hl(0, "DiffText", {
    bg = util.blend(colors.blue, colors.bg, 0.18),
  })

  -- Git diff text
  hl(0, "diffAdded", {
    fg = colors.green,
  })

  hl(0, "diffRemoved", {
    fg = colors.red,
  })

  hl(0, "diffChanged", {
    fg = colors.blue,
  })
end

return M
