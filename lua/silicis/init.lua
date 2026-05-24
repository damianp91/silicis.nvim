local M = {}

function M.setup(opts)
  require("silicis.config").setup(opts)
end

function M.load()
  -- clear previous highlights
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  -- registrer colorscheme name
  vim.g.colors_name = "silicis"
  vim.o.termguicolors = true

  -- load highlight
  require("silicis.highlights").setup()
end

return M
