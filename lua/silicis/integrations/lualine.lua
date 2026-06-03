local M = {}

local util = require("silicis.util")

function M.setup(colors)
  local section_bg = util.darken(colors.bg_float, 0.08)
  local inactive_bg = util.darken(colors.bg, 0.10)

  return {
    normal = {
      a = {
        fg = colors.bg,
        bg = colors.yellow,
        bold = true,
      },

      b = {
        fg = colors.fg,
        bg = section_bg,
      },

      c = {
        fg = colors.fg_dark,
        bg = colors.red,
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
        bg = inactive_bg,
      },

      b = {
        fg = colors.comment,
        bg = inactive_bg,
      },

      c = {
        fg = colors.comment,
        bg = colors.bg,
      },
    },
  }
end

return M
