local M = {}
local util = require("silicis.util")
local hl = util.hl

function M.setup(colors)

  hl("WilderPoppupMenuAccent", {
    fg = colors.orange,
    bold = true,
  })

  hl("WilderPopupMenuSelectedAccent", {
    fg = colors.yellow,
    bold = true,
  })
end

return M
