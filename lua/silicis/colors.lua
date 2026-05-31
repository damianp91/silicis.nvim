local M = {}

function M.setup()
  local config = require("silicis.config").options
  local base = require("silicis.themes.base")

  local ok, variant = pcall(
    require,
    "silicis.themes." .. config.variant
  )

  if not ok then
    variant = require("silicis.themes.earth")
  end

  return vim.tbl_deep_extend(
    'force',
    base,
    variant
  )
end

return M
