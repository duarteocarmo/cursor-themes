local M = {}

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

function M.apply(palette)
  highlight('Normal', { fg = palette.fg, bg = palette.bg })
  highlight('NormalFloat', { fg = palette.fg, bg = palette.bg_elevated or palette.bg })
  highlight('FloatBorder', { fg = palette.border, bg = palette.bg_elevated or palette.bg })
  highlight('ColorColumn', { bg = palette.bg_hover })
  highlight('Cursor', { fg = palette.bg, bg = palette.fg })
  highlight('CursorLine', { bg = palette.bg_hover })
  highlight('CursorColumn', { bg = palette.bg_hover })
  highlight('CursorLineNr', { fg = palette.line_nr_active or palette.fg, bg = palette.bg })
  highlight('LineNr', { fg = palette.line_nr })
  highlight('SignColumn', { bg = palette.bg })
  highlight('Visual', { bg = palette.bg_selected or palette.bg_hover })

  highlight('Comment', { fg = palette.comment, style = 'italic' })
  highlight('Constant', { fg = palette.constant or palette.accent })
  highlight('String', { fg = palette.string })
  highlight('Character', { fg = palette.char or palette.string })
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
  highlight('SpecialChar', { fg = palette.char or palette.accent })
  highlight('Tag', { fg = palette.fg_muted or palette.fg })
  highlight('Delimiter', { fg = palette.fg })
  highlight('SpecialComment', { fg = palette.comment, style = 'italic' })
  highlight('Debug', { fg = palette.keyword })

  highlight('Pmenu', { fg = palette.fg, bg = palette.bg_elevated or palette.bg })
  highlight('PmenuSel', { fg = palette.fg_bright or palette.fg, bg = palette.bg_selected or palette.bg_hover })
  highlight('PmenuSbar', { bg = palette.bg_hover })
  highlight('PmenuThumb', { bg = palette.fg })

  highlight('TabLine', { fg = palette.fg_muted or palette.comment, bg = palette.bg_elevated or palette.bg })
  highlight('TabLineFill', { bg = palette.bg_elevated or palette.bg })
  highlight('TabLineSel', { fg = palette.fg, bg = palette.bg })

  highlight('StatusLine', { fg = palette.fg_muted or palette.fg, bg = palette.border })
  highlight('StatusLineNC', { fg = palette.fg_muted or palette.fg, bg = palette.border })

  highlight('WildMenu', { fg = palette.fg, bg = palette.bg_selected or palette.bg_hover })

  highlight('Search', { fg = palette.bg, bg = palette.search or palette.keyword })
  highlight('IncSearch', { fg = palette.bg, bg = palette.warning or palette.accent })

  highlight('Question', { fg = palette.info or palette.accent })
  highlight('MoreMsg', { fg = palette.info or palette.accent })
  highlight('ModeMsg', { fg = palette.fg_muted or palette.fg })

  highlight('VertSplit', { fg = palette.border })
  highlight('WinSeparator', { fg = palette.border })

  highlight('Folded', { fg = palette.comment, bg = palette.bg_hover })
  highlight('FoldColumn', { fg = palette.fg_dim or palette.fg_muted or palette.fg })

  highlight('ErrorMsg', { fg = palette.error or palette.keyword })
  highlight('WarningMsg', { fg = palette.warning or palette.accent })

  if palette.error then
    highlight('DiagnosticError', { fg = palette.error })
    highlight('DiagnosticUnderlineError', { sp = palette.error, style = 'underline' })
  end

  if palette.warning then
    highlight('DiagnosticWarn', { fg = palette.warning })
    highlight('DiagnosticUnderlineWarn', { sp = palette.warning, style = 'underline' })
  end

  if palette.info then
    highlight('DiagnosticInfo', { fg = palette.info })
    highlight('DiagnosticUnderlineInfo', { sp = palette.info, style = 'underline' })
  end

  if palette.hint then
    highlight('DiagnosticHint', { fg = palette.hint })
    highlight('DiagnosticUnderlineHint', { sp = palette.hint, style = 'underline' })
  end

  if palette.bg_diff_add then
    highlight('DiffAdd', { bg = palette.bg_diff_add })
  elseif palette.added then
    highlight('DiffAdd', { fg = palette.added_bright or palette.added })
  end

  if palette.bg_diff_delete then
    highlight('DiffDelete', { bg = palette.bg_diff_delete })
  elseif palette.deleted then
    highlight('DiffDelete', { fg = palette.deleted_bright or palette.deleted })
  end

  if palette.changed then
    highlight('DiffChange', { fg = palette.changed_bright or palette.changed })
  end

  highlight('DiffText', { fg = palette.fg, bg = palette.bg_hover })

  if palette.added then
    highlight('GitSignsAdd', { fg = palette.added })
  end
  if palette.changed then
    highlight('GitSignsChange', { fg = palette.changed })
  end
  if palette.deleted then
    highlight('GitSignsDelete', { fg = palette.deleted })
  end

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
end

return M
