# Silicis.nvim

> A refined Neovim colorscheme blending Gruvbox warmth with modern slate interfaces.

---

## ✨ Features

- 4 theme variants: earth, ash, ember, frost
- 18 plugin integrations
- Semantic token support (LSP)
- Treesitter highlights
- LSP diagnostics
- Per-component transparency system
- Terminal colors
- Configurable styles (italic, bold)
- Carefully balanced earthy palettes
- Inspired by Gruvbox and Solarized Osaka

---

## 📦 Requirements

- Neovim >= 0.11

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

## ⚙️ Configuration

### Full default config

```lua
require("silicis").setup({
  variant = "terra",       -- "terra" | "cineris" | "pruna" | "ardor"

  terminal_colors = true,

  transparent = {
    enabled = false,
    floating_windows = false,
    telescope = false,
    neo_tree = false,
    bufferline = false,
    lualine = false,
    whichkey = false,
  },

  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },

  integrations = {
    telescope = true,
    cmp = true,
    noice = true,
    neotree = true,
    gitsigns = true,
    whichkey = true,
    bufferline = true,
    lsp = true,
    devicons = true,
    lualine = true,
    oil = true,
    mini_icons = true,
    snacks = true,
    incline = true,
    mason = true,
    todocomment = true,
    wilder = true,
    nvimtree = true,
  },
})
```

---

## 🎨 Variants

| Variant | Style | Description |
|---------|-------|-------------|
| earth | Warm earthy | Gruvbox-inspired browns, warm greens, amber yellows |
| ash | Soft slate | Cool grays, muted blues, desaturated greens |
| ember | Dark warm | Deep brown-black bg, fire-toned accents |
| frost | Cool modern | Blue-gray base, cyan/purple accents |

<!-- TODO: Add variant screenshots -->

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

## 🔌 Supported Integrations

### UI
- Bufferline
- Lualine
- WhichKey
- Noice.nvim
- Incline
- Oil.nvim
- Snacks.nvim

### Completion & Pickers
- nvim-cmp
- Telescope

### Development
- Native LSP (diagnostics, semantic tokens)
- Gitsigns
- Mason
- TodoComment

### File Tree
- Neo-tree
- Nvim-tree

### Misc
- Wilder

### Icons
- Devicons
- Mini.icons

---

## 🎯 Highlight Groups

### Core
- Editor (`Normal`, `CursorLine`, `LineNr`, `WinSeparator`, etc.)
- Syntax (`Comment`, `String`, `Function`, `Keyword`, `Type`, etc.)
- Treesitter (`@keyword`, `@function`, `@variable`, `@string`, etc.)
- Treesitter extended (`@keyword.return`, `@keyword.import`, `@type.qualifier`, `@markup.link.label`, etc.)
- Semantic tokens (`@lsp.type.*`, `@lsp.mod.*`)
- Diagnostics (`DiagnosticError`, `DiagnosticWarn`, etc.)
- UI (`Pmenu`, `Tabline`, `Folded`, `Search`, `CurSearch`, `WinBar`, etc.)
- Terminal (colors 0-15)

### Search
- `Search` / `CurSearch` — highlighted search matches and current match

---

<!--

## Screenshots

### Earth
![Earth variant](path/to/earth.png)

### Ash
![Ash variant](path/to/ash.png)

### Ember
![Ember variant](path/to/ember.png)

### Frost
![Frost variant](path/to/frost.png)

-->

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
