if vim.fn.has("nvim-0.11") == 0 then
  vim.notify(
    "Silicis.nvim requires Neovim >= 0.11",
    vim.log.levels.ERROR,
    { title = "Silicis" }
  )

  return
end

-- Prevent loading twice
if vim.g.loaded_silicis then
  return
end

vim.g.loaded_silicis = true
