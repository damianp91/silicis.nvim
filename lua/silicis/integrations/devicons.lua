local M = {}

local util = require("silicis.util")
local hl = util.hl

function M.setup(colors)
  -- Language
  hl("DevIconLua", {
    fg = colors.blue,
  })

  hl("DevIconJava", {
    fg = colors.red,
  })

  hl("DevIconPython", {
    fg = colors.yellow,
  })

  hl("DevIconPy", {
    fg = colors.yellow,
  })

  hl("DevIconGo", {
    fg = colors.aqua,
  })

  hl("DevIconRust", {
    fg = colors.orange,
  })

  hl("DevIconRs", {
    fg = colors.orange,
  })

  hl("DevIconC", {
    fg = colors.blue_light,
  })

  hl("DevIconCpp", {
    fg = colors.blue_light,
  })

  hl("DevIconTypeScript", {
    fg = colors.blue,
  })

  hl("DevIconTsx", {
    fg = colors.blue,
  })

  hl("DevIconJavaScript", {
    fg = colors.yellow_dark,
  })

  hl("DevIconJs", {
    fg = colors.yellow_dark,
  })

  hl("DevIconHtml", {
    fg = colors.orange,
  })

  hl("DevIconCss", {
    fg = colors.blue_dark,
  })

  hl("DevIconScss", {
    fg = colors.purple,
  })

  hl("DevIconJson", {
    fg = colors.yellow,
  })

  hl("DevIconYaml", {
    fg = colors.red,
  })

  hl("DevIconToml", {
    fg = colors.orange_dark,
  })

  hl("DevIconXml", {
    fg = colors.orange,
  })

  -- Shell
  hl("DevIconSh", {
    fg = colors.green,
  })

  hl("DevIconBash", {
    fg = colors.green,
  })

  hl("DevIconZsh", {
    fg = colors.green_neon,
  })

  hl("DevIconFish", {
    fg = colors.aqua,
  })

  -- Config
  hl("DevIconVim", {
    fg = colors.green,
  })

  hl("DevIconVimrc", {
    fg = colors.green,
  })

  hl("DevIconConfig", {
    fg = colors.comment,
  })

  hl("DevIconConf", {
    fg = colors.comment,
  })

  hl("DevIconIni", {
    fg = colors.comment,
  })

  -- Markdown / Docs
  hl("DevIconMd", {
    fg = colors.fg_dark,
  })

  hl("DevIconMarkdown", {
    fg = colors.fg_dark,
  })

  hl("DevIconTxt", {
    fg = colors.fg_dark,
  })

  hl("DevIconReadme", {
    fg = colors.aqua,
  })

  -- Git
  hl("DevIconGitIgnore", {
    fg = colors.red_dark,
  })

  hl("DevIconGitConfig", {
    fg = colors.red_dark,
  })

  hl("DevIconGitCommit", {
    fg = colors.red_dark,
  })

  -- Docker
  hl("DevIconDockerfile", {
    fg = colors.blue,
  })

  -- Databases
  hl("DevIconSql", {
    fg = colors.purple,
  })

  -- Images
  hl("DevIconPng", {
    fg = colors.purple_dark,
  })

  hl("DevIconJpg", {
    fg = colors.purple_dark,
  })

  hl("DevIconSvg", {
    fg = colors.orange,
  })

  -- Archives
  hl("DevIconZip", {
    fg = colors.yellow_dark,
  })

  hl("DevIconTar", {
    fg = colors.yellow_dark,
  })

  hl("DevIconGz", {
    fg = colors.yellow_dark,
  })

  hl("DevIcon7z", {
    fg = colors.yellow_dark,
  })

  -- Binary
  hl("DevIconExe", {
    fg = colors.red_dark,
  })

  hl("DevIconBin", {
    fg = colors.red_dark,
  })

  hl("DevIconDll", {
    fg = colors.red_dark,
  })

  hl("DevIconObjectFile", {
    fg = colors.red_dark,
  })

  -- Default
  hl("DevIconDefault", {
    fg = colors.comment,
  })
end

return M
