vim.cmd[[highlight clear]]

if vim.fn.exists('syntax_on') then
  vim.cmd[[syntax reset]]
end

vim.g.colors_name = 'cursor-dark-midnight'

local palette = {
  bg = '#1e2127',
  bg_elevated = '#191c22',
  bg_hover = '#434c5e',
  bg_selected = '#434c5e',

  fg = '#7b88a1',
  fg_bright = '#d8dee9',
  fg_muted = '#616d87',
  fg_dim = '#4c566a',

  comment = '#616d87',
  string = '#a3be8c',
  accent = '#88c0d0',
  keyword = '#81a1c1',
  number = '#b48ead',
  char = '#ebcb8b',

  added = '#a3be8c',
  changed = '#ebcb8b',
  deleted = '#bf616a',

  line_nr = '#4c566a',
  line_nr_active = '#687692',
  border = '#4b5163',
  search = '#88c0d0',
}

require('cursor-themes').apply(palette)
