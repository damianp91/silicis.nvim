local base = require("silicis.themes.base")

return vim.tbl_deep_extend("force", base, {
  bg = "#161a1d",
  bg_float = "#202729",
  bg_secondary = "#1d2326",

  fg = "#c8d3cf",
  fg_dark = "#aab4b0",
  comment = "#5f6768",

  border = "#2f383a",

  blue = "#7a9ea8",
  aqua = "#6fa8a0",
  green = "#8aa57b",
  yellow = "#bfa67a",

  selection = "#263036",
})
