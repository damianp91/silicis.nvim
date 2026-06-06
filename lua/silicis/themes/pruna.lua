local base = require("silicis.themes.base")

return vim.tbl_deep_extend("force", base, {
  bg = "#201917",
  bg_float = "#2a211f",
  bg_secondary = "#181312",

  fg = "#ddc7a1",
  fg_dark = "#d6bc8f",
  comment = "#7a6b5f",

  red = "#ea6962",
  orange = "#e78a4e",
  yellow = "#d8a657",
  green = "#a9b665",

  selection = "#332724",
})
