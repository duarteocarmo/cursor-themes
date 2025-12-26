# Cursor Themes for Neovim

Modern Neovim colorschemes with organized palette structures inspired by Vesper. All themes share a common highlight system with unique color palettes.

## Themes

### cursor-dark
Refined dark theme with vibrant colors and semantic palette organization.

### cursor-dark-midnight
Darker midnight theme with Nord-inspired colors and a muted palette.

### cursor-light
Light theme with high contrast and clean palette structure.

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  'duarteocarmo/cursor-themes.nvim',
  lazy = false,
  priority = 1000,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use 'duarteocarmo/cursor-themes.nvim'
```

### Using vim-plug

```vim
Plug 'duarteocarmo/cursor-themes.nvim'
```

## Usage

Set the colorscheme in your Neovim configuration:

```lua
vim.cmd.colorscheme('cursor-dark')
-- or
vim.cmd.colorscheme('cursor-dark-midnight')
-- or
vim.cmd.colorscheme('cursor-light')
```

## License

MIT
