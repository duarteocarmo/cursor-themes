vim.cmd[[highlight clear]]

if vim.fn.exists('syntax_on') then
  vim.cmd[[syntax reset]]
end

vim.g.colors_name = 'cursor-dark-midnight'

local palette = {
  bg = '#1e2127',
  bg_elevated = '#2f3534',
  bg_hover = '#343a48',
  bg_selected = '#33292f',

  fg = '#7b88a1',
  fg_bright = '#d8dee9',
  fg_muted = '#616d87',
  fg_dim = '#4c566a',

  comment = '#616d87',
  string = '#A3BE8C',
  accent = '#88C0D0',
  keyword = '#81A1C1',
  number = '#B48EAD',
  char = '#EBCB8B',

  line_nr = '#4c566a',
  line_nr_active = '#d8dee9',
  border = '#4b5163',
  search = '#88C0D0',
}

require('cursor-themes').apply(palette)
