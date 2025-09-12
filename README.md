# 🌒 Autumn.nvim

A cozy autumn-inspired colorscheme for Neovim.

## Installation

### Lazy.nvim

```lua
{
  "your-username/autumn.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("autumn")
  end,
}
```

### Packer

```lua
use({
  "your-username/autumn.nvim",
  config = function()
    vim.cmd("colorscheme autumn")
  end,
})
```

### Features

- highlights
- LSP semantic tokens
- Git + Diagnostics
- Telescope support
