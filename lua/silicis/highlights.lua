local M = {}

function M.setup()
  local colors = require("silicis.colors").setup()
  local config = require("silicis.config").options

  -- groups
  require("silicis.groups.editor").setup(colors, config)
  require("silicis.groups.terminal").setup(colors, config)
  require("silicis.groups.syntax").setup(colors, config)
  require("silicis.groups.diagnostics").setup(colors, config)
  require("silicis.groups.treesitter").setup(colors, config)
  require("silicis.groups.semantic_tokens").setup()
  require("silicis.groups.ui").setup(colors)

  -- integrations
  if config.integrations.bufferline then
    require("silicis.integrations.bufferline").setup(colors)
  end

  if config.integrations.cmp then
    require("silicis.integrations.cmp").setup(colors, config)
  end

  if config.integrations.lsp then
    require("silicis.integrations.lsp").setup(colors, config)
  end

  if config.integrations.telescope then
    require("silicis.integrations.telescope").setup(colors, config)
  end

  if config.integrations.lualine then
    require("silicis.integrations.lualine").setup(colors)
  end

  if config.integrations.gitsigns then
    require("silicis.integrations.gitsigns").setup(colors, config)
  end

  if config.integrations.whichkey then
    require("silicis.integrations.whichkey").setup(colors, config)
  end

  if config.integrations.noice then
    require("silicis.integrations.noice").setup(colors, config)
  end

  if config.integrations.neotree then
    require("silicis.integrations.neotree").setup(colors, config)
  end

  if config.integrations.oil then
    require("silicis.integrations.oil").setup(colors)
  end

  if config.integrations.snacks then
    require("silicis.integrations.snacks").setup(colors, config)
  end

  if config.integrations.incline then
    require("silicis.integrations.incline").setup(colors, config)
  end

  if config.integrations.mason then
    require("silicis.integrations.mason").setup(colors)
  end

  if config.integrations.todocomment then
    require("silicis.integrations.todocomment").setup(colors)
  end

  if config.integrations.devicons then
    require("silicis.integrations.devicons").setup(colors)
  end

  if config.integrations.mini_icons then
    require("silicis.integrations.mini_icons").setup(colors)
  end
end

return M
