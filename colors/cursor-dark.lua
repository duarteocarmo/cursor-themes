vim.cmd[[highlight clear]]

if vim.fn.exists('syntax_on') then
  vim.cmd[[syntax reset]]
end

vim.g.colors_name = 'cursor-dark'

local palette = {
  bg = '#181818',
  bg_elevated = '#141414',
  bg_hover = '#262626',
  bg_selected = '#404040',

  fg = '#e4e4e4',
  fg_bright = '#ffffff',
  fg_muted = '#a0a0a0',
  fg_dim = '#626262',

  comment = '#5e5e5e',
  string = '#e394dc',
  accent = '#efb080',
  keyword = '#82d2ce',
  number = '#ebc88d',

  error = '#fc6b83',
  warning = '#f1b467',
  info = '#88c0d0',
  hint = '#a0a0a0',

  added = '#3fa266',
  added_bright = '#70b489',
  changed = '#d2943e',
  changed_bright = '#f1b467',
  deleted = '#e34671',
  deleted_bright = '#fc6b83',

  line_nr = '#e4e4e4',
  line_nr_active = '#e4e4e4',
  border = '#e4e4e4',
  search = '#88c0d0',
}

require('cursor-themes').apply(palette)
