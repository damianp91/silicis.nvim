local M = {}

local util = require("silicis.util")

function M.setup(colors, _)
  local hl = vim.api.nvim_set_hl
  local prompt_bg = util.darken(colors.bg_float, 0.15)
  local preview_bg = util.darken(colors.bg_dark, 0.1)
  local selection_bg = util.blend(colors.blue, colors.bg, 0.15)

  -- Main windows
  hl(0, "TelescopeNormal", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl(0, "TelescopeBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  -- Prompt
  hl(0, "TelescopePromptNormal", {
    fg = colors.fg,
    bg = prompt_bg,
  })

  hl(0, "TelescopePromptBorder", {
    fg = util.lighten(colors.border, 0.1),
    bg = prompt_bg,
  })

  hl(0, "TelescopePromptTitle", {
    fg = colors.bg_dark,
    bg = colors.blue,
    bold = true,
  })

  -- Results
  hl(0, "TelescopeResultsNormal", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl(0, "TelescopeResultsBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  hl(0, "TelescopeResultsTitle", {
    fg = colors.bg_dark,
    bg = colors.green,
    bold = true,
  })

  -- Preview
  hl(0, "TelescopePreviewNormal", {
    fg = colors.fg,
    bg = preview_bg,
  })

  hl(0, "TelescopePreviewBorder", {
    fg = colors.border,
    bg = preview_bg,
  })

  hl(0, "TelescopePreviewTitle", {
    fg = colors.bg_dark,
    bg = colors.purple,
    bold = true,
  })

  -- Selection
  hl(0, "TelescopeSelection", {
    bg = selection_bg,
    bold = true,
  })

  hl(0, "TelescopeSelectionCaret", {
    fg = colors.blue,
  })

  -- Matching text
  hl(0, "TelescopeMatching", {
    fg = util.lighten(colors.cyan, 0.15),
    bold = true,
  })
end

return M
