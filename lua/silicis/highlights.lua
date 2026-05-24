local M = {}

function M.setup()
  local colors = require("silicis.colors").setup()
  local config = require("silicis.config").options

  require("silicis.groups.editor").setup(colors, config)
  require("silicis.groups.terminal").setup(colors)
  require("silicis.groups.syntax").setup(colors, config)
  require("silicis.groups.diagnostics").setup(colors, config)
  require("silicis.groups.treesitter").setup(colors, config)
  require("silicis.groups.semantic_tokens").setup(colors, config)
  require("silicis.integrations.bufferline").setup(colors)
  require("silicis.integrations.cmp").setup(colors, config)
  require("silicis.integrations.lsp").setup(colors, config)
  require("silicis.integrations.telescope").setup(colors, config)
  require("silicis.integrations.lualine").setup(colors)
  require("silicis.integrations.gitsigns").setup(colors, config)
  require("silicis.integrations.whichkey").setup(colors, config)
  require("silicis.integrations.noice").setup(colors, config)
  require("silicis.integrations.neotree").setup(colors, config)
end

return M
