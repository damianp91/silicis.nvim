local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, _)

  hl("InclineNormal", {
    fg = colors.bg,
    bg = colors.green,
  })

end

return M
