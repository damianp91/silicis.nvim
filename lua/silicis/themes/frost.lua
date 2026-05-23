local base = require("silicis.themes.base")

return vim.tbl_deep_extend("force", base, {
  bg_dark = "#111417",
  bg = "#171c21",
  bg_alt = "#1f252b",

  fg = "#c6d0dc",

  comment = "#66707b",

  blue = "#7aa2f7",
  cyan = "#7dcfff",
  purple = "#bb9af7",

  selection = "#28344a",
})
