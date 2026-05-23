local M = {}

local util = require("silicis.util")

function M.setup(colors, _)
  local hl = vim.api.nvim_set_hl

  local sidebar_bg = util.darken(colors.bg_dark, 0.06)
  local selection_bg = util.blend(colors.blue, colors.bg, 0.14)

  -- Main window
  hl(0, "NeoTreeNormal", {
    fg = colors.fg,
    bg = sidebar_bg,
  })

  hl(0, "NeoTreeNormalNC", {
    fg = colors.fg_dark,
    bg = sidebar_bg,
  })

  hl(0, "NeoTreeEndOfBuffer", {
    fg = sidebar_bg,
    bg = sidebar_bg,
  })

  -- Borders
  hl(0, "NeoTreeBorder", {
    fg = colors.border,
    bg = sidebar_bg,
  })

  hl(0, "NeoTreeWinSeparator", {
    fg = colors.border,
    bg = colors.bg,
  })

  -- Cursor line / selection
  hl(0, "NeoTreeCursorLine", {
    bg = selection_bg,
  })

  hl(0, "NeoTreeTabActive", {
    fg = colors.fg,
    bg = selection_bg,
    bold = true,
  })

  -- Directories
  hl(0, "NeoTreeDirectoryName", {
    fg = colors.yellow,
    bold = true,
  })

  hl(0, "NeoTreeDirectoryIcon", {
    fg = colors.orange,
  })

  -- Files
  hl(0, "NeoTreeFileName", {
    fg = colors.fg,
  })

  hl(0, "NeoTreeFileIcon", {
    fg = colors.blue,
  })

  -- Git status
  hl(0, "NeoTreeGitAdded", {
    fg = colors.green,
  })

  hl(0, "NeoTreeGitModified", {
    fg = colors.blue,
  })

  hl(0, "NeoTreeGitDeleted", {
    fg = colors.red,
  })

  hl(0, "NeoTreeGitUntracked", {
    fg = colors.cyan,
  })

  hl(0, "NeoTreeGitIgnored", {
    fg = colors.comment,
    italic = true,
  })

  -- Indent markers
  hl(0, "NeoTreeIndentMarker", {
    fg = util.lighten(colors.bg_alt, 0.08),
  })

  -- Root name
  hl(0, "NeoTreeRootName", {
    fg = colors.purple,
    bold = true,
  })

  -- Float windows
  hl(0, "NeoTreeFloatBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  hl(0, "NeoTreeFloatTitle", {
    fg = colors.blue,
    bold = true,
  })

  -- Tabs
  hl(0, "NeoTreeTabSeparatorActive", {
    fg = selection_bg,
    bg = selection_bg,
  })

  hl(0, "NeoTreeTabSeparatorInactive", {
    fg = sidebar_bg,
    bg = sidebar_bg,
  })
end

return M
