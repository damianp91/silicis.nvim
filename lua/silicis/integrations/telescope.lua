local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, config)
  local selection_bg = util.blend(colors.blue, colors.bg, 0.18)
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
    bg = util.get_bg(colors.bg_float, telescope_transparent),
  })

  hl("TelescopePromptBorder", {
    fg = util.lighten(colors.border, 0.1),
    bg = util.get_bg(colors.bg_float, telescope_transparent),
  })

  hl("TelescopePromptTitle", {
    fg = colors.red_dark,
    bg = colors.bg_float,
    bold = true,
  })

  -- Results
  hl("TelescopeResultsNormal", {
    fg = colors.fg,
    bg = util.get_bg(colors.bg_float, telescope_transparent),
  })

  hl("TelescopeResultsBorder", {
    fg = colors.border,
    bg = util.get_bg(colors.bg_float, telescope_transparent),
  })

  hl("TelescopeResultsTitle", {
    fg = colors.bg,
    bg = util.get_bg(colors.bg_float, telescope_transparent),
    bold = true,
  })

  -- Preview
  hl("TelescopePreviewNormal", {
    fg = colors.fg,
    bg = util.get_bg(colors.bg, telescope_transparent),
  })

  hl("TelescopePreviewBorder", {
    fg = colors.border,
    bg = util.get_bg(colors.bg_float, telescope_transparent),
  })

  hl("TelescopePreviewTitle", {
    fg = colors.bg,
    bg = util.get_bg(colors.bg_float, telescope_transparent),
    bold = true,
  })

  -- Selection
  hl("TelescopeSelection", {
    bg = colors.cursorline,
    bold = true,
  })

  hl("TelescopeSelectionCaret", {
    fg = colors.red,
  })

  -- Matching text
  hl("TelescopeMatching", {
    fg = util.lighten(colors.yellow, 0.19),
    bold = true,
  })

  -- Multiselection
  hl("TelescopeMultiSelection", {
    fg = colors.orange,
    bold = true,
  })

  hl("TelescopeMultiIcon", {
    fg = colors.orange,
  })

  -- Path
  hl("TelescopeResultsComment", {
    fg = colors.fg_dark,
  })

  -- Prefix
  hl("TelescopePromptPrefix", {
    fg = colors.red,
    bold = true,
  })

  hl("TelescopePromptCounter", {
    fg = colors.fg_dark,
  })

  hl("TelescopePreviewLine", {
    bg = selection_bg,
  })

  hl("TelescopePreviewMatch", {
    fg = colors.orange,
    bold = true,
  })

  hl("TelescopeResultsDiffAdd", {
    link = 'DiffAdd',
  })

  hl("TelescopeResultsDiffChange", {
    link = 'DiffChange',
  })

  hl("TelescopeResultsDiffDelete", {
    link = 'DiffDelete',
  })
end

return M
