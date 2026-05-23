local M = {}

function M.setup()
  local config = require("silicis.config").options

  local ok, theme = pcall(
    require,
    "silicis.themes." .. config.variant
  )

  if not ok then
    theme = require("silicis.themes.earth")
  end

  return theme
end

return M
