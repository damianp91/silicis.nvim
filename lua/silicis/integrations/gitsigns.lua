local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, _)
  local add_bg = util.blend(colors.green, colors.bg, 0.10)
  local change_bg = util.blend(colors.orange, colors.bg, 0.10)
  local delete_bg = util.blend(colors.red, colors.bg, 0.10)

  -- GitSigns
  hl("GitSignsAdd", {
    fg = colors.green,
  })

  hl("GitSignsChange", {
    fg = colors.orange_dark,
  })

  hl("GitSignsDelete", {
    fg = colors.red_dark,
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
    bg = util.blend(colors.yellow_dark, colors.bg, 0.18),
  })

  -- Git diff text
  hl("diffAdded", {
    fg = colors.green,
  })

  hl("diffRemoved", {
    fg = colors.red_dark,
  })

  hl("diffChanged", {
    fg = colors.orange_dark,
  })

  hl("GitSignCurrentLineBlame", {
    fg = colors.fg_dark,
    italic = true,
  })

  -- Preview
  hl("GitSignsAddPreview", {
    fg = colors.green,
  })

  hl("GitSignsDeletePreview", {
    fg = colors.red_dark,
  })

  hl("GitSignsDeleteVirtLn", {
    fg = colors.red_dark,
  })

  -- Stages
  hl("GitSignsStagedAdd", {
    fg = util.darken(colors.green, 0.5),
  })

  hl("GitSignsStagedChange", {
    fg = util.darken(colors.orange, 0.5),
  })

  hl("GitSignsStagedDelete", {
    fg = util.darken(colors.red, 0.5),
  })
end

return M
