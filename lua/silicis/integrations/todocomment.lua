local M = {}
local util = require("silicis.util")
local hl = util.hl

function M.setup(colors)
  -- Performance optimizations
  hl("TodoFgPERF", {
    fg = colors.purple,
    bg = colors.bg,
  })
  hl("TodoBgPERF", {
    fg = colors.bg,
    bg = colors.purple,
  })
  hl("TodoSignPERF", {
    fg = colors.purple,
    bg = colors.bg,
  })

  -- to do
  hl("TodoBgTODO", {
    fg = colors.bg,
    bg = colors.blue,
  })
  hl("TodoFgTODO", {
    fg = colors.blue,
    bg = colors.bg,
  })
  hl("TodoSignTODO", {
    fg = colors.blue,
    bg = colors.bg,
  })

  -- Test
  hl("TodoBgTEST", {
    fg = colors.bg,
    bg = colors.green,
  })

  hl("TodoFgTEST", {
    fg = colors.green,
    bg = colors.bg,
  })

  hl("TodoSignTEST", {
    fg = colors.green,
    bg = colors.bg,
  })

  -- fix
  hl("TodoBgFIX", {
    fg = colors.bg,
    bg = colors.red,
  })

  hl("TodoFgFIX", {
    fg = colors.red,
    bg = colors.bg,
  })

  hl("TodoSignFIX", {
    fg = colors.red,
    bg = colors.bg,
  })

  -- warn
  hl("TodoBgWARN", {
    fg = colors.bg,
    bg = colors.yellow,
  })

  hl("TodoFgWARN", {
    fg = colors.yellow,
    bg = colors.bg,
  })

  hl("TodoSignWARN", {
    fg = colors.yellow,
    bg = colors.bg,
  })

  -- note
  hl("TodoBgNOTE", {
    fg = colors.bg,
    bg = colors.aqua,
  })

  hl("TodoFgNOTE", {
    fg = colors.aqua,
    bg = colors.bg,
  })

  hl("TodoSignNOTE", {
    fg = colors.aqua,
    bg = colors.bg,
  })

  -- hack
  hl("TodoBgHACK", {
    fg = colors.bg,
    bg = colors.orange,
  })

  hl("TodoFgHACK", {
    fg = colors.orange,
    bg = colors.bg,
  })

  hl("TodoSignHACK", {
    fg = colors.orange,
    bg = colors.bg,
  })
end

return M
