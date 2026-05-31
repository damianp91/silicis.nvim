local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors)

  -- Directory
  hl("OilDir", {
    fg = colors.green,
  })

  hl("OilDirIcon", {
    fg = colors.green,
  })

  -- Files
  hl("OilFile", {
    fg = colors.fg_dark,
  })

  -- Links
  hl("OilLink", {
    fg = colors.aqua,
  })

  hl("OilLinkTarget", {
    fg = colors.blue_light,
    italic = true,
  })

  -- Git style operations
  hl("OilCreate", {
    fg = colors.green,
  })

  hl("OilCopy", {
    fg = colors.green_neon,
  })

  hl("OilMove", {
    fg = colors.yellow,
  })

  hl("OilChange", {
    fg = colors.orange,
  })

  hl("OilDelete", {
    fg = colors.red_dark,
  })

  -- Permissions
  hl("OilPermissionRead", {
    fg = colors.green,
  })

  hl("OilPermissionWrite", {
    fg = colors.yellow,
  })

  hl("OilPermissionExecute", {
    fg = colors.red,
  })

  -- Metadata
  hl("OilSize", {
    fg = colors.purple,
  })

  hl("OilMtime", {
    fg = colors.comment,
  })

  hl("OilHidden", {
    fg = colors.comment,
    italic = true,
  })
end

return M
