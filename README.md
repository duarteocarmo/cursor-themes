# Cursor Themes for Neovim

Modern Neovim colorschemes with organized palette structures inspired by Vesper. All themes feature comprehensive TreeSitter support and modern plugin integrations.

## Themes

### cursor-dark
Refined dark theme with vibrant colors and semantic palette organization.

### cursor-dark-midnight
Darker midnight theme with Nord-inspired colors and a muted palette.

### cursor-dark-enhanced
Enhanced variant of cursor-dark with additional plugin support for Telescope, GitSigns, Mini.nvim, Flash.nvim, Blink.cmp, and Oil.nvim.

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
vim.cmd.colorscheme('cursor-dark-enhanced')
-- or
vim.cmd.colorscheme('cursor-light')
```

## License

MIT
