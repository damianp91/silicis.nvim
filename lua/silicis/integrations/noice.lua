local M = {}

local util = require("silicis.util")

function M.setup(colors, _)
  local hl = vim.api.nvim_set_hl

  local popup_bg = util.darken(colors.bg_float, 0.04)
  local cmd_bg = util.darken(colors.bg_alt, 0.06)

  -- Main popup
  hl(0, "NoiceCmdlinePopup", {
    fg = colors.fg,
    bg = cmd_bg,
  })

  hl(0, "NoiceCmdlinePopupBorder", {
    fg = colors.border,
    bg = cmd_bg,
  })

  hl(0, "NoiceCmdlineIcon", {
    fg = colors.blue,
    bg = cmd_bg,
  })

  -- Popup menu
  hl(0, "NoicePopup", {
    fg = colors.fg,
    bg = popup_bg,
  })

  hl(0, "NoicePopupBorder", {
    fg = colors.border,
    bg = popup_bg,
  })

  -- Confirm dialogs
  hl(0, "NoiceConfirm", {
    fg = colors.fg,
    bg = popup_bg,
  })

  hl(0, "NoiceConfirmBorder", {
    fg = colors.yellow,
    bg = popup_bg,
  })

  -- Mini notifications
  hl(0, "NoiceMini", {
    fg = colors.fg,
    bg = util.darken(colors.bg_dark, 0.08),
  })

  -- Search
  hl(0, "NoiceFormatProgressDone", {
    fg = colors.green,
  })

  hl(0, "NoiceFormatProgressTodo", {
    fg = colors.comment,
  })

  -- Command line
  hl(0, "NoiceCmdline", {
    fg = colors.fg,
    bg = cmd_bg,
  })

  hl(0, "NoiceCmdlinePrompt", {
    fg = colors.cyan,
    bold = true,
  })

  -- Completion menu
  hl(0, "NoiceCompletionItemKindDefault", {
    fg = colors.blue,
  })

  -- Messages
  hl(0, "NoiceFormatTitle", {
    fg = colors.yellow,
    bold = true,
  })

  hl(0, "NoiceFormatEvent", {
    fg = colors.blue,
  })

  hl(0, "NoiceFormatKind", {
    fg = colors.purple,
  })
end

return M
