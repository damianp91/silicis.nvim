local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, _)

  local add_bg = util.blend(colors.green, colors.bg, 0.10)
  local change_bg = util.blend(colors.blue, colors.bg, 0.10)
  local delete_bg = util.blend(colors.red, colors.bg, 0.10)

  -- GitSigns
  hl("GitSignsAdd", {
    fg = colors.green,
  })

  hl("GitSignsChange", {
    fg = colors.blue,
  })

  hl("GitSignsDelete", {
    fg = colors.red,
  })

  -- Diff highlights
  hl("DiffAdd", {
    bg = add_bg,
  })

  hl("DiffChange", {
    bg = change_bg,
  })

  hl("DiffDelete", {
    bg = delete_bg,
  })

  hl("DiffText", {
    bg = util.blend(colors.blue, colors.bg, 0.18),
  })

  -- Git diff text
  hl("diffAdded", {
    fg = colors.green,
  })

  hl("diffRemoved", {
    fg = colors.red,
  })

  hl("diffChanged", {
    fg = colors.blue,
  })
end

return M
