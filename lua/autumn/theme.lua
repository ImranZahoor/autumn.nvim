-- autumn/theme.lua
local colors = require("autumn.colors")

local theme = {}

theme.highlights = {
	-- Editor UI
	Normal = { fg = colors.gray_purple, bg = colors.black_deep },
	NormalNC = { fg = colors.gray_purple, bg = colors.charcoal },
	NormalFloat = { fg = colors.gray_purple, bg = colors.deep_purple },
	CursorLine = { bg = colors.deep_purple },
	CursorLineNr = { fg = colors.red_bright, bold = true },
	LineNr = { fg = colors.brown_light },
	Visual = { fg = colors.red_bright, bg = colors.charcoal },
	StatusLine = { fg = colors.taupe, bg = colors.charcoal },
	StatusLineNC = { fg = colors.gray_purple, bg = colors.deep_purple },
	WinBar = { fg = colors.gray_purple, bg = colors.deep_purple },
	WinBarNC = { fg = colors.brown_light, bg = colors.charcoal },
	VertSplit = { fg = colors.charcoal },
	Search = { bg = colors.orange_burnt, fg = colors.black_deep },
	IncSearch = { bg = colors.red_bright, fg = colors.black_deep },

	-- nvim cmp
	CmpItemAbbr = { fg = colors.gray_purple },
	CmpItemAbbrMatch = { fg = colors.red_wine, bold = true },
	CmpItemAbbrMatchFuzzy = { fg = colors.red_wine, italic = true },

	CmpItemKindFunction = { fg = colors.red_wine },
	CmpItemKindMethod = { fg = colors.red_wine },
	CmpItemKindVariable = { fg = colors.gray_purple },
	CmpItemKindClass = { fg = colors.taupe },
	CmpItemKindInterface = { fg = colors.taupe },
	CmpItemKindText = { fg = colors.orange_burnt },
	CmpItemKindKeyword = { fg = colors.red_bright },
	-- indent guide
	IndentBlanklineChar = { fg = colors.charcoal },
	IndentBlanklineContextChar = { fg = colors.red_bright },

	-- notifications
	NotifyBackground = { bg = colors.deep_purple },
	NotifyERRORBorder = { fg = colors.red_bright, bg = colors.deep_purple },
	NotifyWARNBorder = { fg = colors.orange_burnt, bg = colors.deep_purple },
	NotifyINFOBorder = { fg = colors.brown_light, bg = colors.deep_purple },
	NotifyDEBUGBorder = { fg = colors.gray_purple, bg = colors.deep_purple },
	NotifyTRACEBorder = { fg = colors.red_wine, bg = colors.deep_purple },

	-- floating popups
	Pmenu = { fg = colors.gray_purple, bg = colors.deep_purple },
	PmenuSel = { fg = colors.black_deep, bg = colors.orange_burnt, bold = true },
	PmenuSbar = { bg = colors.charcoal },
	PmenuThumb = { bg = colors.brown_light },

	FloatBorder = { fg = colors.charcoal, bg = colors.deep_purple },

	-- Bufferline / Tabline
	BufferLineFill = { bg = colors.black_deep },
	BufferLineBackground = { fg = colors.brown_light, bg = colors.black_deep },
	BufferLineBufferSelected = { fg = colors.red_bright, bg = colors.deep_purple, bold = true },
	BufferLineBufferVisible = { fg = colors.gray_purple, bg = colors.charcoal },

	BufferLineSeparator = { fg = colors.charcoal, bg = colors.black_deep },
	BufferLineSeparatorSelected = { fg = colors.deep_purple, bg = colors.deep_purple },
	BufferLineSeparatorVisible = { fg = colors.charcoal, bg = colors.charcoal },

	BufferLineIndicatorSelected = { fg = colors.red_bright, bg = colors.deep_purple },

	-- Tabs
	TabLine = { fg = colors.gray_purple, bg = colors.black_deep },
	TabLineFill = { bg = colors.black_deep },
	TabLineSel = { fg = colors.red_bright, bg = colors.deep_purple, bold = true },
	-- search
	CurSearch = { bg = colors.red_wine, fg = colors.black_deep, bold = true },
	-- WhichKey
	WhichKey = { fg = colors.red_wine, bold = true },
	WhichKeyGroup = { fg = colors.orange_burnt },
	WhichKeyDesc = { fg = colors.gray_purple },
	WhichKeySeparator = { fg = colors.brown_light },
	WhichKeyFloat = { bg = colors.deep_purple },
	WhichKeyBorder = { fg = colors.charcoal, bg = colors.deep_purple },

	-- status/sign columns
	SignColumn = { bg = colors.black_deep },
	StatusColumn = { bg = colors.black_deep },
	GitSignsAdd = { fg = colors.brown_light },
	GitSignsChange = { fg = colors.orange_burnt },
	GitSignsDelete = { fg = colors.red_bright },

	-- Basic Syntax
	Comment = { fg = colors.brown_light, italic = true },
	Constant = { fg = colors.orange_burnt },
	String = { fg = colors.orange_burnt },
	Identifier = { fg = colors.red_bright },
	Function = { fg = colors.red_wine, bold = true },
	Statement = { fg = colors.red_bright, bold = true },
	Keyword = { fg = colors.red_wine, bold = true },
	Type = { fg = colors.taupe },
	Number = { fg = colors.orange_burnt },
	Boolean = { fg = colors.orange_burnt },
	Operator = { fg = colors.gray_purple },

	-- Diagnostics (LSP + vim.diagnostic)
	DiagnosticError = { fg = colors.red_bright },
	DiagnosticWarn = { fg = colors.orange_burnt },
	DiagnosticInfo = { fg = colors.brown_light },
	DiagnosticHint = { fg = colors.gray_purple },

	DiagnosticUnderlineError = { undercurl = true, sp = colors.red_bright },
	DiagnosticUnderlineWarn = { undercurl = true, sp = colors.orange_burnt },
	DiagnosticUnderlineInfo = { undercurl = true, sp = colors.brown_light },
	DiagnosticUnderlineHint = { undercurl = true, sp = colors.gray_purple },

	-- Git
	DiffAdd = { fg = colors.brown_light, bg = colors.deep_purple },
	DiffChange = { fg = colors.orange_burnt, bg = colors.deep_purple },
	DiffDelete = { fg = colors.red_bright, bg = colors.deep_purple },
	DiffText = { fg = colors.red_wine, bg = colors.deep_purple },

	-- Telescope
	TelescopeNormal = { fg = colors.gray_purple, bg = colors.deep_purple },
	TelescopeBorder = { fg = colors.charcoal, bg = colors.deep_purple },
	-- cursor/word occurrence highlights (LSP, vim-illuminate, matchup, treesitter, etc.)
	LspReferenceText = { fg = colors.red_bright, bg = colors.charcoal, bold = true },
	LspReferenceRead = { fg = colors.red_bright, bg = colors.charcoal, bold = true },
	LspReferenceWrite = { fg = colors.orange_burnt, bg = colors.charcoal, bold = true },

	-- vim-illuminate uses these
	IlluminatedWordText = { fg = colors.red_bright, bg = colors.charcoal, bold = true },
	IlluminatedWordRead = { fg = colors.red_bright, bg = colors.charcoal, bold = true },
	IlluminatedWordWrite = { fg = colors.orange_burnt, bg = colors.charcoal, bold = true },
	IlluminatedWord = { fg = colors.red_bright, bg = colors.charcoal, bold = true },

	-- vim-matchup / match / cursor-word helpers
	MatchWord = { fg = colors.red_bright, bg = colors.charcoal, bold = true },
	MatchWordCur = { fg = colors.red_bright, bg = colors.charcoal, bold = true },
	CursorWord = { fg = colors.red_bright, bg = colors.charcoal, bold = true },
	CursorWord2 = { fg = colors.orange_burnt, bg = colors.charcoal, bold = true },

	-- some treesitter helpers / references
	TSDefinition = { fg = colors.red_bright, bg = colors.charcoal, bold = true },
	TSDefinitionUsage = { fg = colors.red_bright, bg = colors.charcoal, bold = true },
	TSReference = { fg = colors.red_bright, bg = colors.charcoal, bold = true },

	-- fallback if something links to this name
	Reference = { fg = colors.red_bright, bg = colors.charcoal, bold = true },
	---------------------------------------------------------------------------
	-- Treesitter Highlights
	---------------------------------------------------------------------------
	["@comment"] = { fg = colors.brown_light, italic = true },
	["@string"] = { fg = colors.orange_burnt },
	["@number"] = { fg = colors.orange_burnt },
	["@boolean"] = { fg = colors.orange_burnt },
	["@constant"] = { fg = colors.orange_burnt },
	["@constant.builtin"] = { fg = colors.red_bright },

	["@function"] = { fg = colors.red_wine, bold = true },
	["@function.call"] = { fg = colors.red_wine },
	["@method"] = { fg = colors.red_wine },
	["@method.call"] = { fg = colors.red_wine },

	["@variable"] = { fg = colors.gray_purple },
	["@variable.builtin"] = { fg = colors.red_bright, italic = true },

	["@keyword"] = { fg = colors.red_wine, bold = true },
	["@keyword.function"] = { fg = colors.red_wine, bold = true },
	["@keyword.operator"] = { fg = colors.gray_purple },
	["@type"] = { fg = colors.taupe },
	["@type.builtin"] = { fg = colors.brown_light },

	["@tag"] = { fg = colors.red_bright },
	["@tag.attribute"] = { fg = colors.orange_burnt },
	["@tag.delimiter"] = { fg = colors.charcoal },

	["@punctuation.bracket"] = { fg = colors.gray_purple },
	["@punctuation.delimiter"] = { fg = colors.gray_purple },
	["@punctuation.special"] = { fg = colors.red_bright },

	---------------------------------------------------------------------------
	-- LSP Semantic Tokens
	---------------------------------------------------------------------------
	["@lsp.type.class"] = { fg = colors.taupe, bold = true },
	["@lsp.type.enum"] = { fg = colors.taupe },
	["@lsp.type.enumMember"] = { fg = colors.orange_burnt },
	["@lsp.type.function"] = { fg = colors.red_wine, bold = true },
	["@lsp.type.interface"] = { fg = colors.taupe },
	["@lsp.type.macro"] = { fg = colors.orange_burnt },
	["@lsp.type.method"] = { fg = colors.red_wine },
	["@lsp.type.namespace"] = { fg = colors.brown_light },
	["@lsp.type.parameter"] = { fg = colors.gray_purple, italic = true },
	["@lsp.type.property"] = { fg = colors.orange_burnt },
	["@lsp.type.struct"] = { fg = colors.taupe, bold = true },
	["@lsp.type.type"] = { fg = colors.taupe },
	["@lsp.type.typeParameter"] = { fg = colors.red_bright, italic = true },
	["@lsp.type.variable"] = { fg = colors.gray_purple },
}

return theme
