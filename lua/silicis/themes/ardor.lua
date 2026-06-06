local base = require("silicis.themes.base")

return vim.tbl_deep_extend("force", base, {
  bg = "#171c21",
  bg_float = "#1f252b",
  bg_secondary = "#111417",

  fg = "#c6d0dc",
  fg_dark = "#b0becf",
  comment = "#66707b",

  blue = "#7aa2f7",
  blue_dark = "#7dcfff",
  purple = "#bb9af7",

  selection = "#28344a",
})
