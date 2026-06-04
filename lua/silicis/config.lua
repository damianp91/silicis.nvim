local M = {}

M.defaults = {
  transparent = {
    enabled = false,

    floating_windows = false,
    telescope = false,
    neo_tree = false,
    bufferline = false,
    lualine = false,
    whichkey = false,
  },

  terminal_colors = true,

  integrations = {
    telescope = true,
    cmp = true,
    noice = true,
    neotree = true,
    gitsigns = true,
    whichkey = true,
    bufferline = true,
    lsp = true,
    devicons = true,
    lualine = true,
    oil = true,
    mini_icons = true,
    snacks = true,
    incline = true,
    mason = true,
    todocomment = true,
  },

  styles = {
    comments = {
      italic = true,
    },

    keywords = {
      bold = true,
    },

    functions = {},

    variables = {},
  },

  variant = "earth",
}

M.options = {}

function M.setup(opts)
  M.options = vim.tbl_deep_extend(
    "force",
    vim.deepcopy(M.defaults),
    opts or {}
  )
end

return M
