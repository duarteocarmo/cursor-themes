local M = {}

function M.apply(c)
  local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- editor
  hl("Normal", { fg = c.fg, bg = c.bg })
  hl("NormalFloat", { fg = c.fg, bg = c.bg_elevated or c.bg })
  hl("FloatBorder", { fg = c.border, bg = c.bg_elevated or c.bg })
  hl("FloatTitle", { fg = c.accent, bg = c.bg_elevated or c.bg })
  hl("Cursor", { fg = c.bg, bg = c.accent })
  hl("CursorLine", { bg = c.bg_hover or c.bg })
  hl("CursorLineNr", { fg = c.line_nr_active or c.fg })
  hl("LineNr", { fg = c.line_nr })
  hl("SignColumn", { bg = c.bg })
  hl("VertSplit", { fg = c.border })
  hl("WinSeparator", { fg = c.border })
  hl("StatusLine", { fg = c.fg_muted or c.fg, bg = c.bg })
  hl("StatusLineNC", { fg = c.fg_dim or c.fg_muted or c.fg, bg = c.bg })
  hl("TabLine", { fg = c.fg_muted or c.fg, bg = c.bg })
  hl("TabLineFill", { bg = c.bg })
  hl("TabLineSel", { fg = c.fg, bg = c.bg_elevated or c.bg })
  hl("Pmenu", { fg = c.fg, bg = c.bg_elevated or c.bg })
  hl("PmenuSel", { fg = c.fg, bg = c.bg_selected or c.bg_hover or c.bg })
  hl("PmenuSbar", { bg = c.bg_elevated or c.bg })
  hl("PmenuThumb", { bg = c.bg_hover or c.bg })
  hl("Visual", { bg = c.bg_hover or c.bg_selected or c.bg })
  hl("Search", { fg = c.fg, bg = c.search or c.bg_hover or c.bg })
  hl("IncSearch", { fg = c.bg, bg = c.accent })
  hl("CurSearch", { fg = c.bg, bg = c.accent })
  hl("MatchParen", { fg = c.accent, bg = c.bg_hover or c.bg })
  hl("Folded", { fg = c.fg_muted or c.fg, bg = c.bg_elevated or c.bg })
  hl("FoldColumn", { fg = c.fg_dim or c.fg_muted or c.fg, bg = c.bg })
  hl("NonText", { fg = c.fg_dim or c.fg_muted or c.fg })
  hl("SpecialKey", { fg = c.fg_dim or c.fg_muted or c.fg })
  hl("Whitespace", { fg = c.fg_dim or c.fg_muted or c.fg })
  hl("EndOfBuffer", { fg = c.bg })
  hl("Directory", { fg = c.accent })
  hl("Question", { fg = c.accent })
  hl("MoreMsg", { fg = c.accent })
  hl("ModeMsg", { fg = c.fg_muted or c.fg })
  hl("ErrorMsg", { fg = c.error or c.fg })
  hl("WarningMsg", { fg = c.warning or c.accent })
  hl("Title", { fg = c.accent })
  hl("WildMenu", { fg = c.fg, bg = c.bg_selected or c.bg_hover or c.bg })

  -- syntax
  hl("Comment", { fg = c.comment })
  hl("Constant", { fg = c.constant or c.accent })
  hl("String", { fg = c.string })
  hl("Character", { fg = c.char or c.string })
  hl("Number", { fg = c.number or c.accent })
  hl("Boolean", { fg = c.accent })
  hl("Float", { fg = c.number or c.accent })
  hl("Identifier", { fg = c.fg })
  hl("Function", { fg = c.accent })
  hl("Statement", { fg = c.keyword or c.fg_muted or c.fg })
  hl("Conditional", { fg = c.keyword or c.fg_muted or c.fg })
  hl("Repeat", { fg = c.keyword or c.fg_muted or c.fg })
  hl("Label", { fg = c.accent })
  hl("Operator", { fg = c.keyword or c.fg_muted or c.fg })
  hl("Keyword", { fg = c.keyword or c.fg_muted or c.fg })
  hl("Exception", { fg = c.keyword or c.fg_muted or c.fg })
  hl("PreProc", { fg = c.keyword or c.fg_muted or c.fg })
  hl("Include", { fg = c.keyword or c.fg_muted or c.fg })
  hl("Define", { fg = c.keyword or c.fg_muted or c.fg })
  hl("Macro", { fg = c.accent })
  hl("PreCondit", { fg = c.keyword or c.fg_muted or c.fg })
  hl("Type", { fg = c.accent })
  hl("StorageClass", { fg = c.keyword or c.fg_muted or c.fg })
  hl("Structure", { fg = c.accent })
  hl("Typedef", { fg = c.accent })
  hl("Special", { fg = c.accent })
  hl("SpecialChar", { fg = c.accent })
  hl("Tag", { fg = c.accent })
  hl("Delimiter", { fg = c.fg_muted or c.fg })
  hl("SpecialComment", { fg = c.comment })
  hl("Debug", { fg = c.error or c.fg })
  hl("Underlined", { fg = c.accent, underline = true })
  hl("Error", { fg = c.error or c.fg })
  hl("Todo", { fg = c.accent, bg = c.bg_elevated or c.bg })

  -- diagnostics
  if c.error then
    hl("DiagnosticError", { fg = c.error })
    hl("DiagnosticUnderlineError", { sp = c.error, undercurl = true })
    hl("DiagnosticVirtualTextError", { fg = c.error, bg = c.bg })
    hl("DiagnosticFloatingError", { fg = c.error })
    hl("DiagnosticSignError", { fg = c.error })
  end

  if c.warning then
    hl("DiagnosticWarn", { fg = c.warning })
    hl("DiagnosticUnderlineWarn", { sp = c.warning, undercurl = true })
    hl("DiagnosticVirtualTextWarn", { fg = c.warning, bg = c.bg })
    hl("DiagnosticFloatingWarn", { fg = c.warning })
    hl("DiagnosticSignWarn", { fg = c.warning })
  end

  if c.info then
    hl("DiagnosticInfo", { fg = c.info })
    hl("DiagnosticUnderlineInfo", { sp = c.info, undercurl = true })
    hl("DiagnosticVirtualTextInfo", { fg = c.info, bg = c.bg })
    hl("DiagnosticFloatingInfo", { fg = c.info })
    hl("DiagnosticSignInfo", { fg = c.info })
  end

  if c.hint then
    hl("DiagnosticHint", { fg = c.hint })
    hl("DiagnosticUnderlineHint", { sp = c.hint, undercurl = true })
    hl("DiagnosticVirtualTextHint", { fg = c.hint, bg = c.bg })
    hl("DiagnosticFloatingHint", { fg = c.hint })
    hl("DiagnosticSignHint", { fg = c.hint })
  end

  -- lsp
  hl("LspReferenceText", { bg = c.bg_hover or c.bg })
  hl("LspReferenceRead", { bg = c.bg_hover or c.bg })
  hl("LspReferenceWrite", { bg = c.bg_hover or c.bg })
  hl("LspSignatureActiveParameter", { fg = c.accent })
  hl("LspInlayHint", { fg = c.fg_dim or c.fg_muted or c.fg, bg = c.bg })

  -- diff
  if c.bg_diff_add then
    hl("DiffAdd", { bg = c.bg_diff_add })
  elseif c.added then
    hl("DiffAdd", { fg = c.added, bg = c.bg })
  end

  if c.bg_diff_delete then
    hl("DiffDelete", { bg = c.bg_diff_delete })
  elseif c.deleted then
    hl("DiffDelete", { fg = c.deleted, bg = c.bg })
  end

  if c.changed then
    hl("DiffChange", { fg = c.changed, bg = c.bg })
    hl("DiffText", { fg = c.changed, bg = c.bg_hover or c.bg })
  end

  if c.added then
    hl("Added", { fg = c.added })
  end
  if c.changed then
    hl("Changed", { fg = c.changed })
  end
  if c.deleted then
    hl("Removed", { fg = c.deleted })
  end

  -- gitsigns
  if c.added then
    hl("GitSignsAdd", { fg = c.added })
  end
  if c.changed then
    hl("GitSignsChange", { fg = c.changed })
  end
  if c.deleted then
    hl("GitSignsDelete", { fg = c.deleted })
  end

  -- mini.diff
  if c.added then
    hl("MiniDiffSignAdd", { fg = c.added })
    hl("MiniDiffOverAdd", { fg = c.added, bg = c.bg })
  end
  if c.changed then
    hl("MiniDiffSignChange", { fg = c.changed })
    hl("MiniDiffOverChange", { fg = c.changed, bg = c.bg })
  end
  if c.deleted then
    hl("MiniDiffSignDelete", { fg = c.deleted })
    hl("MiniDiffOverDelete", { fg = c.deleted, bg = c.bg })
  end

  -- mini.statusline
  hl("MiniStatuslineDevinfo", { fg = c.fg_muted or c.fg, bg = c.bg })
  hl("MiniStatuslineFileinfo", { fg = c.fg_muted or c.fg, bg = c.bg })
  hl("MiniStatuslineFilename", { fg = c.fg, bg = c.bg })
  hl("MiniStatuslineInactive", { fg = c.fg_dim or c.fg_muted or c.fg, bg = c.bg })
  hl("MiniStatuslineModeCommand", { fg = c.bg, bg = c.accent })
  hl("MiniStatuslineModeInsert", { fg = c.bg, bg = c.accent })
  hl("MiniStatuslineModeNormal", { fg = c.bg, bg = c.fg_muted or c.fg })
  hl("MiniStatuslineModeOther", { fg = c.bg, bg = c.fg_dim or c.fg_muted or c.fg })
  hl("MiniStatuslineModeReplace", { fg = c.bg, bg = c.fg_muted or c.fg })
  hl("MiniStatuslineModeVisual", { fg = c.bg, bg = c.accent })

  -- telescope
  hl("TelescopeNormal", { fg = c.fg, bg = c.bg })
  hl("TelescopeBorder", { fg = c.border, bg = c.bg })
  hl("TelescopeTitle", { fg = c.accent, bg = c.bg })
  hl("TelescopePromptNormal", { fg = c.fg, bg = c.bg })
  hl("TelescopePromptBorder", { fg = c.border, bg = c.bg })
  hl("TelescopePromptTitle", { fg = c.accent, bg = c.bg })
  hl("TelescopePromptPrefix", { fg = c.accent, bg = c.bg })
  hl("TelescopeResultsNormal", { fg = c.fg, bg = c.bg })
  hl("TelescopeResultsBorder", { fg = c.border, bg = c.bg })
  hl("TelescopeResultsTitle", { fg = c.accent, bg = c.bg })
  hl("TelescopePreviewNormal", { fg = c.fg, bg = c.bg })
  hl("TelescopePreviewBorder", { fg = c.border, bg = c.bg })
  hl("TelescopePreviewTitle", { fg = c.accent, bg = c.bg })
  hl("TelescopeSelection", { fg = c.fg, bg = c.bg_selected or c.bg_hover or c.bg })
  hl("TelescopeSelectionCaret", { fg = c.accent, bg = c.bg_selected or c.bg_hover or c.bg })
  hl("TelescopeMatching", { fg = c.accent })

  -- blink.cmp
  hl("BlinkCmpMenu", { fg = c.fg, bg = c.bg_elevated or c.bg })
  hl("BlinkCmpMenuBorder", { fg = c.border, bg = c.bg_elevated or c.bg })
  hl("BlinkCmpMenuSelection", { bg = c.bg_selected or c.bg_hover or c.bg })
  hl("BlinkCmpLabel", { fg = c.fg })
  hl("BlinkCmpLabelMatch", { fg = c.accent })
  hl("BlinkCmpLabelDescription", { fg = c.fg_muted or c.fg })
  hl("BlinkCmpKind", { fg = c.accent })
  hl("BlinkCmpDoc", { fg = c.fg, bg = c.bg_elevated or c.bg })
  hl("BlinkCmpDocBorder", { fg = c.border, bg = c.bg_elevated or c.bg })
  hl("BlinkCmpSignatureHelp", { fg = c.fg, bg = c.bg_elevated or c.bg })
  hl("BlinkCmpSignatureHelpBorder", { fg = c.border, bg = c.bg_elevated or c.bg })

  -- oil
  hl("OilDir", { fg = c.accent })
  hl("OilFile", { fg = c.fg })
  hl("OilSocket", { fg = c.fg_muted or c.fg })
  hl("OilLink", { fg = c.string })
  hl("OilLinkTarget", { fg = c.fg_muted or c.fg })

  -- treesitter
  hl("@variable", { fg = c.fg })
  hl("@variable.builtin", { fg = c.keyword or c.fg_muted or c.fg })
  hl("@variable.parameter", { fg = c.fg })
  hl("@variable.member", { fg = c.fg })
  hl("@constant", { fg = c.accent })
  hl("@constant.builtin", { fg = c.accent })
  hl("@constant.macro", { fg = c.accent })
  hl("@module", { fg = c.fg })
  hl("@label", { fg = c.accent })
  hl("@string", { fg = c.string })
  hl("@string.escape", { fg = c.accent })
  hl("@string.regexp", { fg = c.string })
  hl("@string.special", { fg = c.string })
  hl("@character", { fg = c.char or c.string })
  hl("@character.special", { fg = c.accent })
  hl("@boolean", { fg = c.accent })
  hl("@number", { fg = c.number or c.accent })
  hl("@number.float", { fg = c.number or c.accent })
  hl("@type", { fg = c.accent })
  hl("@type.builtin", { fg = c.accent })
  hl("@type.definition", { fg = c.accent })
  hl("@attribute", { fg = c.keyword or c.fg_muted or c.fg })
  hl("@property", { fg = c.fg })
  hl("@function", { fg = c.accent })
  hl("@function.builtin", { fg = c.accent })
  hl("@function.macro", { fg = c.accent })
  hl("@function.method", { fg = c.accent })
  hl("@constructor", { fg = c.accent })
  hl("@operator", { fg = c.keyword or c.fg_muted or c.fg })
  hl("@keyword", { fg = c.keyword or c.fg_muted or c.fg })
  hl("@keyword.modifier", { fg = c.keyword or c.fg_muted or c.fg })
  hl("@keyword.type", { fg = c.keyword or c.fg_muted or c.fg })
  hl("@keyword.coroutine", { fg = c.keyword or c.fg_muted or c.fg })
  hl("@keyword.function", { fg = c.keyword or c.fg_muted or c.fg })
  hl("@keyword.operator", { fg = c.keyword or c.fg_muted or c.fg })
  hl("@keyword.import", { fg = c.keyword or c.fg_muted or c.fg })
  hl("@keyword.repeat", { fg = c.keyword or c.fg_muted or c.fg })
  hl("@keyword.return", { fg = c.keyword or c.fg_muted or c.fg })
  hl("@keyword.exception", { fg = c.keyword or c.fg_muted or c.fg })
  hl("@keyword.conditional", { fg = c.keyword or c.fg_muted or c.fg })
  hl("@punctuation", { fg = c.fg_muted or c.fg })
  hl("@punctuation.delimiter", { fg = c.fg_muted or c.fg })
  hl("@punctuation.bracket", { fg = c.fg_muted or c.fg })
  hl("@punctuation.special", { fg = c.fg_muted or c.fg })
  hl("@comment", { fg = c.comment })
  hl("@comment.documentation", { fg = c.comment })
  hl("@comment.error", { fg = c.error or c.fg })
  hl("@comment.warning", { fg = c.warning or c.accent })
  hl("@comment.todo", { fg = c.accent })
  hl("@comment.note", { fg = c.info or c.accent })
  hl("@markup.heading", { fg = c.accent })
  hl("@markup.quote", { fg = c.fg_muted or c.fg })
  hl("@markup.math", { fg = c.accent })
  hl("@markup.link", { fg = c.accent })
  hl("@markup.link.label", { fg = c.accent })
  hl("@markup.link.url", { fg = c.string, underline = true })
  hl("@markup.raw", { fg = c.string })
  hl("@markup.list", { fg = c.fg_muted or c.fg })
  hl("@markup.strong", { bold = true })
  hl("@markup.italic", { italic = true })
  hl("@markup.strikethrough", { strikethrough = true })
  hl("@tag", { fg = c.accent })
  hl("@tag.attribute", { fg = c.fg_muted or c.fg })
  hl("@tag.delimiter", { fg = c.fg_muted or c.fg })

  -- flash.nvim
  hl("FlashLabel", { fg = c.bg, bg = c.accent, bold = true })
  hl("FlashMatch", { fg = c.accent })
  hl("FlashCurrent", { fg = c.bg, bg = c.string })
  hl("FlashBackdrop", { fg = c.comment })
end

return M
