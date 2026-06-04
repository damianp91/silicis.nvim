local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, _)

  -- Main popup
  hl("NoiceCmdlinePopup", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl("NoiceCmdlinePopupBorder", {
    fg = colors.blue_light,
    bg = colors.bg_float,
  })

  hl("NoiceCmdlineIcon", {
    fg = colors.blue,
    bg = colors.bg_float,
  })

  -- Popup menu
  hl("NoicePopup", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl("NoicePopupBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  -- Confirm dialogs
  hl("NoiceConfirm", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl("NoiceConfirmBorder", {
    fg = colors.green,
    bg = colors.bg_float,
  })

  -- Mini notifications
  hl("NoiceMini", {
    fg = colors.fg,
    bg = util.darken(colors.bg_secondary, 0.08),
  })

  -- Search
  hl("NoiceFormatProgressDone", {
    fg = colors.green,
  })

  hl("NoiceFormatProgressTodo", {
    fg = colors.comment,
  })

  -- Command line
  hl("NoiceCmdline", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl("NoiceCmdlinePrompt", {
    fg = colors.aqua,
    bold = true,
  })

  -- Completion menu
  hl("NoiceCompletionItemKindDefault", {
    fg = colors.blue,
  })

  -- Messages
  hl("NoiceFormatTitle", {
    fg = colors.yellow,
    bold = true,
  })

  hl("NoiceFormatEvent", {
    fg = colors.blue,
  })

  hl("NoiceFormatKind", {
    fg = colors.purple,
  })

  -- counts
  hl("NoiceFormatLevelInfo", {
    fg = colors.aqua,
  })

  hl("NoiceFormatLevelWarn", {
    fg = colors.yellow,
  })

  hl("NoiceFormatLevelError", {
    fg = colors.red_dark,
  })

  -- messages
  hl("NoiceLspProgressTitle", {
    fg = colors.yellow,
    bold = true,
  })

  hl("NoiceLspProgressClient", {
    fg = colors.blue,
  })

  hl("NoiceLspProgressSpinner", {
    fg = colors.orange,
  })

  hl("NoiceCmdlinePopupTitle", {
    fg = colors.yellow,
    bold = true,
  })

  hl("NoicePopupmenuBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  hl("NoicePopupmenuSelected", {
    bg = colors.selection,
  })

  -- entries
  hl("NoiceCmdlinePopupBorderLua", {
    fg = colors.orange,
  })

  hl("NoiceCmdlinePopupBorderHelp", {
    fg = colors.green,
  })

  hl("NoiceCmdlinePopupBorderFilter", {
    fg = colors.purple,
  })

  hl("NoiceCmdlinePopupBorderCalculator", {
    fg = colors.aqua,
  })

  hl("NoiceCompletionItemKindFunction", {
    fg = colors.yellow,
  })

  hl("NoiceCompletionItemKindMethod", {
    fg = colors.yellow,
  })

  hl("NoiceCompletionItemKindVariable", {
    fg = colors.fg_dark,
  })

  hl("NoiceCompletionItemKindKeyword", {
    fg = colors.red,
  })

  hl("NoiceCompletionItemKindModule", {
    fg = colors.orange,
  })

  hl("NoiceCompletionItemKindClass", {
    fg = colors.yellow,
  })

  hl("NoiceVirtualText", {
    fg = colors.comment,
    italic = true,
  })
end

return M
