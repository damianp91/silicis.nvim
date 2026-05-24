local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, _)

  local popup_bg = util.darken(colors.bg_float, 0.04)
  local cmd_bg = util.darken(colors.bg_alt, 0.06)

  -- Main popup
  hl("NoiceCmdlinePopup", {
    fg = colors.fg,
    bg = cmd_bg,
  })

  hl("NoiceCmdlinePopupBorder", {
    fg = colors.border,
    bg = cmd_bg,
  })

  hl("NoiceCmdlineIcon", {
    fg = colors.blue,
    bg = cmd_bg,
  })

  -- Popup menu
  hl("NoicePopup", {
    fg = colors.fg,
    bg = popup_bg,
  })

  hl("NoicePopupBorder", {
    fg = colors.border,
    bg = popup_bg,
  })

  -- Confirm dialogs
  hl("NoiceConfirm", {
    fg = colors.fg,
    bg = popup_bg,
  })

  hl("NoiceConfirmBorder", {
    fg = colors.yellow,
    bg = popup_bg,
  })

  -- Mini notifications
  hl("NoiceMini", {
    fg = colors.fg,
    bg = util.darken(colors.bg_dark, 0.08),
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
    bg = cmd_bg,
  })

  hl("NoiceCmdlinePrompt", {
    fg = colors.cyan,
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
end

return M
