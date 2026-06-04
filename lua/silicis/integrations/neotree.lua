local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, config)

  local sidebar_bg = util.darken(colors.bg_secondary, 0.06)
  local selection_bg = util.blend(colors.selection, colors.bg, 0.14)
  local sidebar_transparent = config.transparent.enabled
      and config.transparent.neo_tree

  -- Main window
  hl("NeoTreeNormal", {
    fg = colors.fg,
    bg = util.get_bg(colors.bg, sidebar_transparent),
  })

  hl("NeoTreeNormalNC", {
    fg = colors.fg_dark,
    bg = util.get_bg(colors.bg_secondary, sidebar_transparent),
  })

  hl("NeoTreeEndOfBuffer", {
    fg = sidebar_bg,
    bg = util.get_bg(sidebar_bg, sidebar_transparent),
  })

  -- Borders
  hl("NeoTreeBorder", {
    fg = colors.border,
    bg = util.get_bg(sidebar_bg, sidebar_transparent),
  })

  hl("NeoTreeWinSeparator", {
    fg = colors.border,
    bg = util.get_bg(colors.bg, sidebar_transparent),
  })

  -- Cursor line / selection
  hl("NeoTreeCursorLine", {
    bg = selection_bg,
  })

  hl("NeoTreeTabActive", {
    fg = colors.fg,
    bg = selection_bg,
    bold = true,
  })

  -- Directories
  hl("NeoTreeDirectoryName", {
    fg = colors.yellow,
    bold = true,
  })

  hl("NeoTreeDirectoryIcon", {
    fg = colors.orange,
  })

  -- Files
  hl("NeoTreeFileName", {
    fg = colors.fg,
  })

  hl("NeoTreeFileIcon", {
    fg = colors.blue,
  })

  -- Git status
  hl("NeoTreeGitAdded", {
    fg = colors.green,
  })

  hl("NeoTreeGitModified", {
    fg = colors.blue,
  })

  hl("NeoTreeGitDeleted", {
    fg = colors.red,
  })

  hl("NeoTreeGitUntracked", {
    fg = colors.aqua,
  })

  hl("NeoTreeGitIgnored", {
    fg = colors.comment,
    italic = true,
  })

  -- Indent markers
  hl("NeoTreeIndentMarker", {
    fg = util.lighten(colors.bg_secondary, 0.08),
  })

  -- Root name
  hl("NeoTreeRootName", {
    fg = colors.purple,
    bold = true,
  })

  -- Float windows
  hl("NeoTreeFloatBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  hl("NeoTreeFloatTitle", {
    fg = colors.blue,
    bold = true,
  })

  -- Tabs
  hl("NeoTreeTabSeparatorActive", {
    fg = selection_bg,
    bg = util.get_bg(sidebar_bg, sidebar_transparent),
  })

  hl("NeoTreeTabSeparatorInactive", {
    fg = sidebar_bg,
    bg = util.get_bg(sidebar_bg, sidebar_transparent),
  })
end

return M
