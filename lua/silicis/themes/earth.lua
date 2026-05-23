local base = require("silicis.themes.base")

return vim.tbl_deep_extend("force", base, {
  bg = "#1d2021",
  bg_alt = "#252525",

  fg = "#d4be98",

  yellow = "#d8a657",
  green = "#a9b665",
  blue = "#7daea3",

  selection = "#2c3230",
})
