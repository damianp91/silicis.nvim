local M = {}

local util = require("silicis.util")

function M.setup(colors, config)
  local hl = require("util.hl")
  local prompt_bg = util.darken(colors.bg_float, 0.15)
  local preview_bg = util.darken(colors.bg_dark, 0.1)
  local selection_bg = util.blend(colors.blue, colors.bg, 0.15)
  local telescope_transparent = config.transparent.enabled
      and config.transparent.telescope

  -- Main windows
  hl("TelescopeNormal", {
    fg = colors.fg,
    bg = util.get_bg(colors.bg_float, telescope_transparent),
  })

  hl("TelescopeBorder", {
    fg = colors.border,
    bg = util.get_bg(colors.bg_float, telescope_transparent),
  })

  -- Prompt
  hl("TelescopePromptNormal", {
    fg = colors.fg,
    bg = prompt_bg,
  })

  hl("TelescopePromptBorder", {
    fg = util.lighten(colors.border, 0.1),
    bg = prompt_bg,
  })

  hl("TelescopePromptTitle", {
    fg = colors.bg_dark,
    bg = colors.blue,
    bold = true,
  })

  -- Results
  hl("TelescopeResultsNormal", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl("TelescopeResultsBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  hl("TelescopeResultsTitle", {
    fg = colors.bg_dark,
    bg = colors.green,
    bold = true,
  })

  -- Preview
  hl("TelescopePreviewNormal", {
    fg = colors.fg,
    bg = preview_bg,
  })

  hl("TelescopePreviewBorder", {
    fg = colors.border,
    bg = preview_bg,
  })

  hl("TelescopePreviewTitle", {
    fg = colors.bg_dark,
    bg = colors.purple,
    bold = true,
  })

  -- Selection
  hl("TelescopeSelection", {
    bg = selection_bg,
    bold = true,
  })

  hl("TelescopeSelectionCaret", {
    fg = colors.blue,
  })

  -- Matching text
  hl("TelescopeMatching", {
    fg = util.lighten(colors.cyan, 0.15),
    bold = true,
  })
end

return M
