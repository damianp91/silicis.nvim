local M = {}

function M.setup(colors, _)
  local hl = vim.api.nvim_set_hl

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
    bg = colors.bg_alt,
  })

  hl(0, "TelescopePromptBorder", {
    fg = colors.border,
    bg = colors.bg_alt,
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
    bg = colors.bg_dark,
  })

  hl(0, "TelescopePreviewBorder", {
    fg = colors.border,
    bg = colors.bg_dark,
  })

  hl(0, "TelescopePreviewTitle", {
    fg = colors.bg_dark,
    bg = colors.purple,
    bold = true,
  })

  -- Selection
  hl(0, "TelescopeSelection", {
    bg = colors.selection,
    bold = true,
  })

  hl(0, "TelescopeSelectionCaret", {
    fg = colors.blue,
  })

  -- Matching text
  hl(0, "TelescopeMatching", {
    fg = colors.cyan,
    bold = true,
  })
end

return M
