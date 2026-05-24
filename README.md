# Silicis.nvim

> A refined Neovim colorscheme blending Gruvbox warmth with modern slate interfaces.

---

## ✨ Features

- Multiple theme variants
- Modern UI integrations
- Semantic token support
- Treesitter support
- LSP highlights
- Transparency system
- Carefully balanced earthy palettes
- Inspired by Gruvbox and Solarized Osaka

---

## 📦 Installation

Using lazy.nvim:

```lua
{
  "damianp91/silicis.nvim",
  priority = 1000,
  lazy = false,

  config = function()
    require("silicis").setup({
      variant = "earth",
    })

    vim.cmd.colorscheme("silicis")
  end,
}
```

---

## 🎨 Variants

| Variant | Style |
|---|---|
| earth | Warm earthy tones |
| ash | Soft slate palette |
| ember | Dark warm terminal aesthetic |
| frost | Cool modern interface |

---

## 🔌 Supported Integrations

- Telescope
- nvim-cmp
- Neo-tree
- Noice.nvim
- Gitsigns
- Bufferline
- WhichKey
- Lualine
- Treesitter
- Native LSP

---

## 🪟 Transparency

```lua
require("silicis").setup({
  transparent = {
    enabled = true,

    floating_windows = false,
    telescope = false,
    neo_tree = true,
  },
})
```

---

## ⚡ Philosophy

Silicis focuses on:
- visual balance
- reduced eye fatigue
- layered interfaces
- subtle contrasts
- earthy syntax with modern UI composition

---

## 🙏 Credits

Inspired by:
- Gruvbox
- Solarized Osaka
- TokyoNight
