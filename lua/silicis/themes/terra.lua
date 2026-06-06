local base = require("silicis.themes.base")

return vim.tbl_deep_extend("force", base, {
  -- backgrounds
  bg = "#161616",
  bg_float = "#181a1b",
  bg_secondary = "#1a1a1a",

  -- foregrounds
  fg = "#ebdbb2",
  fg_dark = "#d5c4a1",
  comment = "#64594f",

  -- syntax
  red = "#ff3333",
  orange = "#fe8019",
  yellow = "#fabd2f",
  green = "#98971a",
  aqua = "#689d6a",
  blue = "#458588",
})
