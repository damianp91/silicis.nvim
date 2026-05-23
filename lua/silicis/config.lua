local M = {}

M.options = {
  transparent = false,

  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {}
  },

  variant = "earth"
}

function M.setup(opts)
  M.options = vim.tbl_deep_extend(
    "force", M.options, opts or {}
  )
end

return M
