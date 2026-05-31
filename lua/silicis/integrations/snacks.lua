local M = {}

local util = require("silicis.util")
local hl = util.hl

function M.setup(colors, config)
  local transparent = config.transparent.enabled
      and config.transparent.floating_windows

  -- Base Windows
  hl("SnacksNormal", {
    fg = colors.fg,
    bg = util.get_bg(colors.bg_float, transparent),
  })

  hl("SnacksNormalNC", {
    fg = colors.fg,
    bg = util.get_bg(colors.bg_secondary, transparent),
  })

  hl("SnacksBorder", {
    fg = colors.border,
    bg = util.get_bg(colors.bg_float, transparent),
  })

  hl("SnacksTitle", {
    fg = colors.fg,
    bg = util.get_bg(colors.bg_float, transparent),
    bold = true,
  })

  hl("SnacksFooter", {
    fg = colors.comment,
  })

  hl("SnacksBackdrop", {
    bg = colors.bg_float,
  })

  -- Picker
  hl("SnacksPicker", {
    fg = colors.fg,
    bg = util.get_bg(colors.bg_float, transparent),
  })

  hl("SnacksPickerBorder", {
    fg = colors.border,
    bg = util.get_bg(colors.bg_float, transparent),
  })

  hl("SnacksPickerTitle", {
    fg = colors.fg_dark,
    bg = util.get_bg(colors.bg_float, transparent),
    bold = true,
  })

  -- Preview
  hl("SnacksPickerPreview", {
    fg = colors.fg,
    bg = util.get_bg(colors.bg, transparent),
  })

  hl("SnacksPickerPreviewBorder", {
    fg = colors.border,
    bg = util.get_bg(colors.bg_float, transparent),
  })

  hl("SnacksPickerPreviewTitle", {
    fg = colors.fg_dark,
    bg = util.get_bg(colors.bg_float, transparent),
    bold = true,
  })

  hl("SnacksPickerPreviewCursorLine", {
    bg = colors.selection,
  })

  hl("SnacksPickerPrompt", {
    fg = colors.red,
    bold = true,
  })

  hl("SnacksPickerMatch", {
    fg = colors.yellow,
    bold = true,
  })

  hl("SnacksPickerCursorLine", {
    bg = colors.selection,
  })

  hl("SnacksPickerSearch", {
    fg = colors.orange,
    bold = true,
  })

  -- Files & Paths
  hl("SnacksPickerFile", {
    fg = colors.fg,
  })

  hl("SnacksPickerDirectory", {
    fg = colors.green,
  })

  hl("SnacksPickerDir", {
    fg = colors.fg_dark,
  })

  hl("SnacksPickerPathHidden", {
    fg = colors.comment,
    italic = true,
  })

  -- Description / Comments
  hl("SnacksPickerDesc", {
    fg = colors.comment,
  })

  hl("SnacksPickerComment", {
    fg = colors.comment,
  })

  hl("SnacksPickerDimmed", {
    fg = colors.comment,
  })

  -- Git
  hl("SnacksPickerGitStatusAdded", {
    link = 'GitSignsAdd',
  })

  hl("SnacksPickerGitStatusModified", {
    link = 'GitSignsChange',
  })

  hl("SnacksPickerGitStatusDeleted", {
    fg = colors.red,
    link = 'GitSignsDelete',
  })

  hl("SnacksPickerGitStatusIgnored", {
    link = 'GitSignsIgnore'
  })

  hl("SnacksPickerGitStatusUntracked", {
    fg = colors.aqua,
  })

  hl("SnacksPickerGitStatusUnmerged", {
    fg = colors.red_dark,
  })

  hl("SnacksPickerGitBranch", {
    fg = colors.purple,
  })

  hl("SnacksPickerGitCommit", {
    fg = colors.orange,
  })

  -- Diagnostics
  hl("SnacksPickerDiagnosticCode", {
    fg = colors.orange,
  })

  hl("SnacksPickerDiagnosticSource", {
    fg = colors.comment,
  })

  hl("SnacksPickerLspEnabled", {
    fg = colors.green,
  })

  hl("SnacksPickerLspDisabled", {
    fg = colors.red,
  })

  hl("SnacksPickerLspAttached", {
    fg = colors.blue,
  })

  hl("SnacksPickerLspUnavailable", {
    fg = colors.red_dark,
  })

  -- Dashboard
  hl("mainColor", {
    fg = colors.yellow_dark, bold = true
  })

  hl("fileColor", {
    fg = colors.comment, bold = true
  })

  hl("wordColor", {
    fg = colors.fg_dark, bold = true
  })

  hl("heaterColor", {
    fg = colors.yellow_dark, bold = true
  })

  hl("shadowColor", {
    fg = util.darken(colors.comment, 0.9),
    bold = true
  })

  hl("redColor", {
    fg = util.darken(colors.red, 0.3),
    bold = true
  })

  hl("orageColor", {
    fg = colors.orange_dark,
    bold = true
  })

  hl("SnacksDashboardKey", {
    fg = colors.red_dark,
    bold = true,
  })

  hl("SnacksDashboardFooter", {
    fg = colors.fg_dark,
    italic = true,
  })

  hl("SnacksPickerInput", {
    fg = colors.fg,
    bg = util.get_bg(colors.bg_float, transparent),
  })

  hl("SnacksPickerInputBorder", {
    fg = colors.border,
    bg = util.get_bg(colors.bg_float, transparent),
  })

  hl("SnacksPickerInputTitle", {
    fg = colors.fg_dark,
    bg = util.get_bg(colors.bg_float, transparent),
    bold = true,
  })

  -- Input
  hl("SnacksInputTitle", {
    fg = colors.blue,
    bold = true,
  })

  hl("SnacksInputPrompt", {
    fg = colors.orange,
  })

  hl("SnacksInputIcon", {
    fg = colors.aqua,
  })

  hl("SnacksInputBorder", {
    fg = colors.border,
  })

  -- Indent
  hl("SnacksIndent", {
    fg = colors.border,
  })

  hl("SnacksIndentScope", {
    fg = colors.orange,
  })

  hl("SnacksIndentChunk", {
    fg = colors.yellow,
  })
end

return M
