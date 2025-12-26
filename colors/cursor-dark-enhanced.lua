-- Cursor Dark Enhanced - A refined dark theme with organized palette
-- Inspired by Vesper's palette approach

vim.cmd[[highlight clear]]

if vim.fn.exists('syntax_on') then
  vim.cmd[[syntax reset]]
end

vim.g.colors_name = 'cursor-dark-enhanced'

local palette = {
  bg = '#141414',
  bg_elevated = '#181818',
  bg_hover = '#262626',
  bg_selected = '#303030',
  bg_visual = '#404040',

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
  error_dark = '#b80049',
  warning = '#f1b467',
  warning_dark = '#d2943e',
  info = '#88c0d0',
  info_dark = '#81a1c1',
  hint = '#a0a0a0',

  added = '#3fa266',
  added_bright = '#70b489',
  changed = '#d2943e',
  changed_bright = '#f1b467',
  deleted = '#e34671',
  deleted_bright = '#fc6b83',

  line_nr = '#424242',
  line_nr_active = '#e4e4e4',
  border = '#262626',
  search = '#88c0d0',
  selection = '#404040',

  none = 'NONE',
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

highlight('Normal', { fg = palette.fg, bg = palette.bg_elevated })
highlight('NormalFloat', { fg = palette.fg, bg = palette.bg })
highlight('FloatBorder', { fg = palette.border, bg = palette.bg })
highlight('ColorColumn', { bg = palette.bg_hover })
highlight('Cursor', { fg = palette.bg, bg = palette.fg })
highlight('CursorLine', { bg = palette.bg_hover })
highlight('CursorColumn', { bg = palette.bg_hover })
highlight('CursorLineNr', { fg = palette.line_nr_active, bg = palette.bg_elevated })
highlight('LineNr', { fg = palette.line_nr, bg = palette.bg_elevated })
highlight('SignColumn', { fg = palette.fg_dim, bg = palette.bg_elevated })

highlight('Comment', { fg = palette.comment, style = 'italic' })
highlight('Constant', { fg = palette.accent })
highlight('String', { fg = palette.string })
highlight('Character', { fg = palette.string })
highlight('Number', { fg = palette.number })
highlight('Boolean', { fg = palette.keyword })
highlight('Float', { fg = palette.number })

highlight('Identifier', { fg = palette.fg })
highlight('Function', { fg = palette.accent })

highlight('Statement', { fg = palette.keyword })
highlight('Conditional', { fg = palette.keyword })
highlight('Repeat', { fg = palette.keyword })
highlight('Label', { fg = palette.keyword })
highlight('Operator', { fg = palette.fg })
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
highlight('SpecialChar', { fg = palette.accent })
highlight('Tag', { fg = palette.keyword })
highlight('Delimiter', { fg = palette.fg })
highlight('SpecialComment', { fg = palette.comment, style = 'italic' })
highlight('Debug', { fg = palette.error })

highlight('Pmenu', { fg = palette.fg, bg = palette.bg })
highlight('PmenuSel', { fg = palette.fg_bright, bg = palette.bg_selected })
highlight('PmenuSbar', { bg = palette.bg_hover })
highlight('PmenuThumb', { bg = palette.fg_dim })

highlight('TabLine', { fg = palette.fg_dim, bg = palette.bg })
highlight('TabLineFill', { bg = palette.bg })
highlight('TabLineSel', { fg = palette.fg, bg = palette.bg_elevated })

highlight('StatusLine', { fg = palette.fg_muted, bg = palette.bg })
highlight('StatusLineNC', { fg = palette.fg_dim, bg = palette.bg })

highlight('Visual', { bg = palette.bg_visual })
highlight('VisualNOS', { bg = palette.bg_visual })

highlight('Search', { fg = palette.bg, bg = palette.search })
highlight('IncSearch', { fg = palette.bg, bg = palette.warning })

highlight('WildMenu', { fg = palette.fg, bg = palette.bg_selected })

highlight('Question', { fg = palette.info })
highlight('MoreMsg', { fg = palette.info })
highlight('ModeMsg', { fg = palette.fg_muted })

highlight('VertSplit', { fg = palette.border })
highlight('WinSeparator', { fg = palette.border })

highlight('Folded', { fg = palette.comment, bg = palette.bg_hover })
highlight('FoldColumn', { fg = palette.fg_dim, bg = palette.bg_elevated })

highlight('ErrorMsg', { fg = palette.error })
highlight('WarningMsg', { fg = palette.warning })

highlight('DiagnosticError', { fg = palette.error })
highlight('DiagnosticWarn', { fg = palette.warning })
highlight('DiagnosticInfo', { fg = palette.info })
highlight('DiagnosticHint', { fg = palette.hint })

highlight('DiagnosticUnderlineError', { sp = palette.error, style = 'underline' })
highlight('DiagnosticUnderlineWarn', { sp = palette.warning, style = 'underline' })
highlight('DiagnosticUnderlineInfo', { sp = palette.info, style = 'underline' })
highlight('DiagnosticUnderlineHint', { sp = palette.hint, style = 'underline' })

highlight('DiffAdd', { fg = palette.added_bright, bg = palette.bg })
highlight('DiffChange', { fg = palette.changed_bright, bg = palette.bg })
highlight('DiffDelete', { fg = palette.deleted_bright, bg = palette.bg })
highlight('DiffText', { fg = palette.fg, bg = palette.bg_hover })

highlight('GitSignsAdd', { fg = palette.added })
highlight('GitSignsChange', { fg = palette.changed })
highlight('GitSignsDelete', { fg = palette.deleted })

highlight('@variable', { fg = palette.fg })
highlight('@variable.builtin', { fg = palette.keyword })
highlight('@variable.parameter', { fg = palette.fg_muted })
highlight('@variable.member', { fg = palette.accent })

highlight('@constant', { fg = palette.accent })
highlight('@constant.builtin', { fg = palette.keyword })
highlight('@constant.macro', { fg = palette.accent })

highlight('@module', { fg = palette.accent })
highlight('@label', { fg = palette.keyword })

highlight('@string', { fg = palette.string })
highlight('@string.documentation', { fg = palette.comment, style = 'italic' })
highlight('@string.regexp', { fg = palette.string })
highlight('@string.escape', { fg = palette.accent })
highlight('@string.special', { fg = palette.accent })

highlight('@character', { fg = palette.string })
highlight('@character.special', { fg = palette.accent })

highlight('@number', { fg = palette.number })
highlight('@boolean', { fg = palette.keyword })
highlight('@float', { fg = palette.number })

highlight('@function', { fg = palette.accent })
highlight('@function.builtin', { fg = palette.accent })
highlight('@function.call', { fg = palette.accent })
highlight('@function.macro', { fg = palette.accent })

highlight('@method', { fg = palette.accent })
highlight('@method.call', { fg = palette.accent })

highlight('@constructor', { fg = palette.keyword })
highlight('@parameter', { fg = palette.fg_muted })

highlight('@keyword', { fg = palette.keyword })
highlight('@keyword.function', { fg = palette.keyword })
highlight('@keyword.operator', { fg = palette.keyword })
highlight('@keyword.return', { fg = palette.keyword })

highlight('@conditional', { fg = palette.keyword })
highlight('@repeat', { fg = palette.keyword })
highlight('@debug', { fg = palette.error })
highlight('@exception', { fg = palette.keyword })

highlight('@include', { fg = palette.keyword })
highlight('@define', { fg = palette.keyword })
highlight('@preproc', { fg = palette.keyword })

highlight('@type', { fg = palette.keyword })
highlight('@type.builtin', { fg = palette.keyword })
highlight('@type.definition', { fg = palette.keyword })
highlight('@type.qualifier', { fg = palette.keyword })

highlight('@storageclass', { fg = palette.keyword })
highlight('@attribute', { fg = palette.accent })
highlight('@field', { fg = palette.accent })
highlight('@property', { fg = palette.accent })

highlight('@punctuation.delimiter', { fg = palette.fg })
highlight('@punctuation.bracket', { fg = palette.fg })
highlight('@punctuation.special', { fg = palette.accent })

highlight('@comment', { fg = palette.comment, style = 'italic' })
highlight('@comment.documentation', { fg = palette.comment, style = 'italic' })

highlight('@markup.strong', { style = 'bold' })
highlight('@markup.italic', { style = 'italic' })
highlight('@markup.strikethrough', { style = 'strikethrough' })
highlight('@markup.underline', { style = 'underline' })

highlight('@markup.heading', { fg = palette.accent, style = 'bold' })
highlight('@markup.link', { fg = palette.info, style = 'underline' })
highlight('@markup.link.url', { fg = palette.info_dark, style = 'underline' })
highlight('@markup.raw', { fg = palette.string })

highlight('@markup.list', { fg = palette.keyword })
highlight('@markup.list.checked', { fg = palette.added })
highlight('@markup.list.unchecked', { fg = palette.fg_dim })

highlight('@diff.plus', { fg = palette.added })
highlight('@diff.minus', { fg = palette.deleted })
highlight('@diff.delta', { fg = palette.changed })

highlight('@lsp.type.class', { fg = palette.keyword })
highlight('@lsp.type.decorator', { fg = palette.accent })
highlight('@lsp.type.enum', { fg = palette.keyword })
highlight('@lsp.type.enumMember', { fg = palette.accent })
highlight('@lsp.type.function', { fg = palette.accent })
highlight('@lsp.type.interface', { fg = palette.keyword })
highlight('@lsp.type.macro', { fg = palette.accent })
highlight('@lsp.type.method', { fg = palette.accent })
highlight('@lsp.type.namespace', { fg = palette.accent })
highlight('@lsp.type.parameter', { fg = palette.fg_muted })
highlight('@lsp.type.property', { fg = palette.accent })
highlight('@lsp.type.struct', { fg = palette.keyword })
highlight('@lsp.type.type', { fg = palette.keyword })
highlight('@lsp.type.typeParameter', { fg = palette.keyword })
highlight('@lsp.type.variable', { fg = palette.fg })

highlight('TelescopeBorder', { fg = palette.border, bg = palette.bg })
highlight('TelescopeNormal', { fg = palette.fg, bg = palette.bg })
highlight('TelescopeSelection', { fg = palette.fg_bright, bg = palette.bg_selected })
highlight('TelescopeSelectionCaret', { fg = palette.accent, bg = palette.bg_selected })
highlight('TelescopeMultiSelection', { fg = palette.info, bg = palette.bg_selected })
highlight('TelescopeMatching', { fg = palette.search, style = 'bold' })

highlight('GitSignsAdd', { fg = palette.added })
highlight('GitSignsChange', { fg = palette.changed })
highlight('GitSignsDelete', { fg = palette.deleted })
highlight('GitSignsAddNr', { fg = palette.added })
highlight('GitSignsChangeNr', { fg = palette.changed })
highlight('GitSignsDeleteNr', { fg = palette.deleted })
highlight('GitSignsAddLn', { bg = palette.bg_hover })
highlight('GitSignsChangeLn', { bg = palette.bg_hover })
highlight('GitSignsDeleteLn', { bg = palette.bg_hover })

highlight('MiniStatuslineModeNormal', { fg = palette.bg, bg = palette.info })
highlight('MiniStatuslineModeInsert', { fg = palette.bg, bg = palette.added })
highlight('MiniStatuslineModeVisual', { fg = palette.bg, bg = palette.warning })
highlight('MiniStatuslineModeReplace', { fg = palette.bg, bg = palette.error })
highlight('MiniStatuslineModeCommand', { fg = palette.bg, bg = palette.accent })

highlight('MiniDiffSignAdd', { fg = palette.added })
highlight('MiniDiffSignChange', { fg = palette.changed })
highlight('MiniDiffSignDelete', { fg = palette.deleted })

highlight('FlashLabel', { fg = palette.bg, bg = palette.search, style = 'bold' })
highlight('FlashMatch', { fg = palette.search })
highlight('FlashCurrent', { fg = palette.warning })

link('BlinkCmpMenu', 'Pmenu')
link('BlinkCmpMenuBorder', 'FloatBorder')
link('BlinkCmpMenuSelection', 'PmenuSel')
link('BlinkCmpLabel', 'Pmenu')
link('BlinkCmpLabelMatch', 'Search')

link('OilDir', 'Directory')
link('OilSocket', 'Special')
link('OilLink', '@markup.link')

vim.g.terminal_color_0 = palette.bg
vim.g.terminal_color_1 = palette.error
vim.g.terminal_color_2 = palette.added
vim.g.terminal_color_3 = palette.warning
vim.g.terminal_color_4 = palette.info_dark
vim.g.terminal_color_5 = palette.string
vim.g.terminal_color_6 = palette.info
vim.g.terminal_color_7 = palette.fg
vim.g.terminal_color_8 = palette.fg_dim
vim.g.terminal_color_9 = palette.error_bright
vim.g.terminal_color_10 = palette.added_bright
vim.g.terminal_color_11 = palette.changed_bright
vim.g.terminal_color_12 = palette.info
vim.g.terminal_color_13 = palette.string
vim.g.terminal_color_14 = palette.keyword
vim.g.terminal_color_15 = palette.fg_bright
