local base = require("silicis.themes.base")

return vim.tbl_deep_extend("force", base, {
  bg_dark = "#181312",
  bg = "#201917",
  bg_alt = "#2a211f",

  fg = "#ddc7a1",

  comment = "#7a6b5f",

  red = "#ea6962",
  orange = "#e78a4e",
  yellow = "#d8a657",
  green = "#a9b665",

  selection = "#332724",
})
