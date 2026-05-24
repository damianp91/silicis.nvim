local M = {}

-- Convert hex to RGB
function M.hex_to_rgb(hex)
  hex = hex:gsub("#", "")

  return {
    r = tonumber(hex:sub(1, 2), 16),
    g = tonumber(hex:sub(3, 4), 16),
    b = tonumber(hex:sub(5, 6), 16),
  }
end

-- Convert RGB to hex
function M.rgb_to_hex(rgb)
  return string.format(
    "#%02x%02x%02x",
    rgb.r,
    rgb.g,
    rgb.b
  )
end

-- Blend two colors
function M.blend(color1, color2, alpha)
  local c1 = M.hex_to_rgb(color1)
  local c2 = M.hex_to_rgb(color2)

  local blended = {
    r = math.floor((alpha * c1.r) + ((1 - alpha) * c2.r)),
    g = math.floor((alpha * c1.g) + ((1 - alpha) * c2.g)),
    b = math.floor((alpha * c1.b) + ((1 - alpha) * c2.b)),
  }

  return M.rgb_to_hex(blended)
end

-- Darken a color
function M.darken(color, amount)
  return M.blend(color, "#000000", amount)
end

-- Lighten a color
function M.lighten(color, amount)
  return M.blend(color, "#ffffff", amount)
end

-- Select transparent mode
function M.get_bg(color, transparent)
  return transparent and "NONE" or color
end

-- Groups
function M.hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

return M
