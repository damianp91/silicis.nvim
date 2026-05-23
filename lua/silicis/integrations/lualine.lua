local M = {}

function M.setup(colors)
  return {
    normal = {
      a = {
        fg = colors.bg_dark,
        bg = colors.blue,
        bold = true,
      },

      b = {
        fg = colors.fg,
        bg = colors.bg_alt,
      },

      c = {
        fg = colors.fg_dark,
        bg = colors.bg,
      },
    },

    insert = {
      a = {
        fg = colors.bg_dark,
        bg = colors.cyan,
        bold = true,
      },
    },

    visual = {
      a = {
        fg = colors.bg_dark,
        bg = colors.purple,
        bold = true,
      },
    },

    replace = {
      a = {
        fg = colors.bg_dark,
        bg = colors.red,
        bold = true,
      },
    },

    command = {
      a = {
        fg = colors.bg_dark,
        bg = colors.green,
        bold = true,
      },
    },

    inactive = {
      a = {
        fg = colors.comment,
        bg = colors.bg_dark,
      },

      b = {
        fg = colors.comment,
        bg = colors.bg_dark,
      },

      c = {
        fg = colors.comment,
        bg = colors.bg,
      },
    },
  }
end

return M
