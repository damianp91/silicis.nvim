local M = {}

function M.setup(opts)
  require("silicis.config").setup(opts)
end

function M.load()
  -- clear previous highlights
  vim.cmd("highlight clear")

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  -- registrer colorscheme name
  vim.g.colors_name = "silicis"

  -- load highlight
  require("silicis.highlights").setup()
end

return M
