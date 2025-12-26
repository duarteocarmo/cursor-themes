vim.cmd[[highlight clear]]

if vim.fn.exists('syntax_on') then
  vim.cmd[[syntax reset]]
end

vim.g.colors_name = 'cursor-light'

local palette = {
  bg = '#FCFCFC',
  bg_elevated = '#F3F3F3',
  bg_hover = '#e0e0e0',
  bg_diff_add = '#dcebe6',
  bg_diff_delete = '#f6e2e7',

  fg = '#262626',
  fg_muted = '#5e5e5e',
  fg_bright = '#8d8d8d',

  comment = '#5e5e5e',
  string = '#9E94D5',
  accent = '#DB704B',
  keyword = '#B3003F',
  number = '#B8448B',
  constant = '#206595',

  line_nr = '#8d8d8d',
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
highlight('Constant', { fg = palette.constant })
highlight('String', { fg = palette.string })
highlight('Character', { fg = palette.keyword })
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
highlight('SpecialChar', { fg = palette.keyword })
highlight('Tag', { fg = palette.fg_muted })
highlight('Delimiter', { fg = palette.fg })
highlight('SpecialComment', { fg = palette.comment, style = 'italic' })
highlight('Debug', { fg = palette.keyword })

highlight('MyTag', { fg = palette.fg_muted })

highlight('Pmenu', { fg = palette.fg, bg = palette.bg })
highlight('PmenuSel', { fg = palette.bg, bg = palette.fg })
highlight('PmenuSbar', { bg = palette.bg })
highlight('PmenuThumb', { bg = palette.fg })

highlight('TabLine', { fg = palette.fg_muted, bg = palette.bg_elevated })
highlight('TabLineFill', { fg = palette.fg_muted, bg = palette.bg_elevated })
highlight('TabLineSel', { fg = palette.fg, bg = palette.bg })

highlight('StatusLine', { fg = palette.bg_elevated, bg = palette.line_nr })
highlight('StatusLineNC', { fg = palette.bg_elevated, bg = palette.line_nr })

highlight('WildMenu', { fg = palette.fg, bg = palette.bg })

highlight('DiffAdd', { bg = palette.bg_diff_add })
highlight('DiffDelete', { bg = palette.bg_diff_delete })

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
