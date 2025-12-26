vim.cmd[[highlight clear]]

if vim.fn.exists('syntax_on') then
  vim.cmd[[syntax reset]]
end

vim.g.colors_name = 'cursor-light'

local palette = {
  bg = '#fcfcfc',
  bg_elevated = '#f3f3f3',
  bg_hover = '#ededed',
  bg_selected = '#e0e0e0',
  bg_diff_add = '#dcebe6',
  bg_diff_delete = '#f6e2e7',

  fg = '#141414',
  fg_muted = '#5e5e5e',
  fg_bright = '#8d8d8d',
  fg_dim = '#8d8d8d',

  comment = '#8d8d8d',
  string = '#9e94d5',
  accent = '#db704b',
  keyword = '#b3003f',
  number = '#b8448b',
  constant = '#206595',

  added = '#1f8a65',
  changed = '#c08532',
  deleted = '#cf2d56',

  line_nr = '#8d8d8d',
  line_nr_active = '#141414',
  border = '#8d8d8d',
  search = '#6f9ba6',
}

require('cursor-themes').apply(palette)
