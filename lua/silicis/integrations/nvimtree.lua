local M = {}
local util = require("silicis.util")
local hl = util.hl

function M.setup(colors)
  hl("NvimTreeNormal", {
    bg = colors.bg_float,
  })

  hl("NvimTreeNormalFloat", {
    bg = colors.bg_float,
  })

  hl("NvimTreeNormalNC", {
    bg = colors.bg_secondary,
  })

  hl("NvimTreeFolderIcon", {
    fg = colors.green,
  })

  hl("NvimTreeFolderName", {
    fg = colors.green,
    bold = true,
  })

  hl("NvimTreeOpenedFolderName", {
    fg = colors.aqua,
    bold = true,
  })

  hl("NvimTreeRootFolder", {
    fg = colors.green_neon,
    bold = true,
  })

  hl("NvimTreeGitDirtyIcon", {
    fg = colors.orange,
  })

  hl("NvimTreeGitDeletedIcon", {
    fg = colors.red_dark,
  })

  hl("NvimTreeGitNewIcon", {
    fg = colors.orange_dark,
  })

  hl("NvimTreeGitStagedIcon", {
    fg = colors.green,
  })

  hl("NvimTreeGitRenamedIcon", {
    fg = colors.yellow_dark,
  })

  hl("NvimTreeGitIgnoredIcon", {
    fg = colors.comment,
    italic = true,
  })

  hl("NvimTreeIndentMarker", {
    fg = colors.border,
  })

  hl("NvimTreeCursorLine", {
    bg = colors.cursorline,
  })

  hl("NvimTreeModifiedIcon", {
    fg = colors.orange,
  })

  hl("NvimTreeModifiedFileHL", {
    fg = colors.orange,
  })

  hl("NvimTreeModifiedFolderHL", {
    fg = colors.orange,
  })

  hl("NvimTreeHiddenIcon", {
    fg = colors.comment,
  })

  hl("NvimTreeHiddenFileHL", {
    fg = colors.comment,
  })

  hl("NvimTreeHiddenFolderHL", {
    fg = colors.comment,
  })

  hl("NvimTreeImageFile", {
    fg = colors.fg_dark
  })

  hl("NvimTreeExecFile", {
    fg = colors.green_neon,
  })

  hl("NvimTreeSpecialFile", {
    fg = colors.yellow,
    underline = true,
  })
end

return M
