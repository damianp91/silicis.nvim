local M = {}

function M.setup()
  local colors = require("silicis.colors").setup()
  local config = require("silicis.config").options

  require("silicis.groups.editor").setup(colors, config)
  require("silicis.groups.syntax").setup(colors, config)
  require("silicis.groups.diagnostics").setup(colors, config)
  require("lua.silicis.groups.treesitter").setup(colors, config)
  require("lua.silicis.integrations.cmp").setup(colors, config)
end

return M
