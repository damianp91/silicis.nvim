local themes = {
  earth = require("silicis.themes.earth")
}

local M = {}

function M.setup()
  local config = require("silicis.config").options

  local theme = themes[config.variant]

  return theme
end

return M
