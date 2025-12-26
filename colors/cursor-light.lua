vim.cmd[[highlight clear]]

if vim.fn.exists('syntax_on') then
  vim.cmd[[syntax reset]]
end

vim.g.colors_name = 'cursor-light'

local palette = {
  bg = '#FCFCFC',
  bg_elevated = '#F3F3F3',
  bg_hover = '#e0e0e0',
  bg_selected = '#e0e0e0',
  bg_diff_add = '#dcebe6',
  bg_diff_delete = '#f6e2e7',

  fg = '#262626',
  fg_muted = '#5e5e5e',
  fg_bright = '#8d8d8d',
  fg_dim = '#8d8d8d',

  comment = '#5e5e5e',
  string = '#9E94D5',
  accent = '#DB704B',
  keyword = '#B3003F',
  number = '#B8448B',
  constant = '#206595',

  line_nr = '#8d8d8d',
  line_nr_active = '#262626',
  border = '#8d8d8d',
  search = '#DB704B',
}

require('cursor-themes').apply(palette)
