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

  comment = '#616d87',
  string = '#A3BE8C',
  accent = '#88C0D0',
  keyword = '#81A1C1',
  number = '#B48EAD',
  char = '#EBCB8B',

  line_nr = '#4c566a',
  border = '#4b5163',
}

local function highlight(group, opts)
  local fg = opts.fg and 'guifg=' .. opts.fg or ''
  local bg = opts.bg and 'guibg=' .. opts.bg or ''
  local style = opts.style and 'gui=' .. opts.style or ''
  local sp = opts.sp and 'guisp=' .. opts.sp or ''

  vim.api.nvim_command('highlight ' .. group .. ' ' .. fg .. ' ' .. bg .. ' ' .. style .. ' ' .. sp)
end

local function link(target, group)
  vim.api.nvim_command('highlight! link ' .. target .. ' ' .. group)
end

highlight('Normal', { fg = palette.fg, bg = palette.bg })
highlight('ColorColumn', { bg = palette.bg_hover })
highlight('CursorLine', { bg = palette.bg_hover })
highlight('CursorColumn', { bg = palette.bg_hover })
highlight('LineNr', { fg = palette.line_nr })
highlight('SignColumn', { bg = palette.bg })
highlight('Visual', { bg = palette.bg_hover })

highlight('Comment', { fg = palette.comment, style = 'italic' })
highlight('Constant', { fg = palette.char })
highlight('String', { fg = palette.string })
highlight('Character', { fg = palette.char })
highlight('Number', { fg = palette.number })
highlight('Boolean', { fg = palette.keyword })
highlight('Float', { fg = palette.number })

highlight('Identifier', { fg = palette.fg })
highlight('Function', { fg = palette.accent })

highlight('Statement', { fg = palette.keyword })
highlight('Conditional', { fg = palette.keyword })
highlight('Repeat', { fg = palette.keyword })
highlight('Label', { fg = palette.keyword })
highlight('Operator', { fg = palette.keyword })
highlight('Keyword', { fg = palette.keyword })
highlight('Exception', { fg = palette.keyword })

highlight('PreProc', { fg = palette.keyword })
highlight('Include', { fg = palette.keyword })
highlight('Define', { fg = palette.keyword })
highlight('Macro', { fg = palette.accent })
highlight('PreCondit', { fg = palette.keyword })

highlight('Type', { fg = palette.keyword })
highlight('StorageClass', { fg = palette.keyword })
highlight('Structure', { fg = palette.keyword })
highlight('Typedef', { fg = palette.keyword })

highlight('Special', { fg = palette.accent })
highlight('SpecialChar', { fg = palette.char })
highlight('Tag', { fg = palette.keyword })
highlight('Delimiter', { fg = palette.fg })
highlight('SpecialComment', { fg = palette.comment, style = 'italic' })
highlight('Debug', { fg = palette.keyword })

highlight('Pmenu', { fg = palette.fg, bg = palette.bg })
highlight('PmenuSel', { fg = palette.bg, bg = palette.fg })
highlight('PmenuSbar', { bg = palette.bg_elevated })
highlight('PmenuThumb', { bg = palette.fg })

highlight('TabLine', { fg = palette.border, bg = '#191c22' })
highlight('TabLineFill', { fg = palette.border, bg = '#191c22' })
highlight('TabLineSel', { fg = palette.fg_bright, bg = palette.bg })

highlight('StatusLine', { fg = '#191c22', bg = palette.border })
highlight('StatusLineNC', { fg = '#191c22', bg = palette.border })

highlight('WildMenu', { fg = palette.fg, bg = palette.bg })

highlight('DiffAdd', { bg = palette.bg_elevated })
highlight('DiffDelete', { bg = palette.bg_selected })

link('TSCharacter', 'Character')
link('TSComment', 'Comment')
link('TSConditional', 'Conditional')
link('TSConstant', 'Constant')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSField', 'Constant')
link('TSFloat', 'Number')
link('TSFunction', 'Function')
link('TSFuncMacro', 'Macro')
link('TSKeyword', 'Keyword')
link('TSLabel', 'Type')
link('TSNamespace', 'TSType')
link('TSNumber', 'Number')
link('TSOperator', 'Operator')
link('TSParameter', 'Constant')
link('TSParameterReference', 'TSParameter')
link('TSProperty', 'TSField')
link('TSPunctBracket', 'MyTag')
link('TSPunctDelimiter', 'Delimiter')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSRepeat', 'Repeat')
link('TSString', 'String')
link('TSTag', 'MyTag')
link('TSTagDelimiter', 'Type')
link('TSType', 'Type')

link('CursorLineNr', 'Identifier')
link('Conditional', 'Operator')
link('Folded', 'Comment')
link('Macro', 'Function')
link('NonText', 'Comment')
link('Operator', 'Keyword')
link('Repeat', 'Conditional')
link('TelescopeNormal', 'Normal')
link('Whitespace', 'Comment')
