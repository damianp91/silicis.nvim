local M = {}
local util = require("silicis.util")
local hl = util.hl

function M.setup(colors)
  hl("MiniIconsAzure", {
    fg = colors.blue,
  })

  hl("MiniIconsBlue", {
    fg = colors.blue,
  })

  hl("MiniIconsCyan", {
    fg = colors.aqua,
  })

  hl("MiniIconsGreen", {
    fg = colors.green,
  })

  hl("MiniIconsGrey", {
    fg = colors.comment,
  })

  hl("MiniIconsOrange", {
    fg = colors.orange,
  })

  hl("MiniIconsPurple", {
    fg = colors.purple,
  })

  hl("MiniIconsRed", {
    fg = colors.red,
  })

  hl("MiniIconsYellow", {
    fg = colors.yellow,
  })
end

return M
