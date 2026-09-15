vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "gemini"

local c = {
	bg = "#171717",
	fg = "#E8E8E8",
	keyword = "#969DFF",
	type = "#FF5A59",
	func = "#A8C7FA",
	string = "#60D673",
	comment = "#808080",
	operator = "#C4C7C5",
	number = "#F778BA",
	enum = "#A4BAB9",
	property = "#7986a2",
	tree = "#A8C7FA",
    visual = "#303030",
    cursor_line = "#202020"
}

local hl = function(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

hl("Normal", { fg = c.fg, bg = c.bg })
hl("Visual", { bg = c.visual })
hl("CursorLine", { bg = c.cursor_line })
hl("Comment", { fg = c.comment, italic = true })
hl("String", { fg = c.string })
hl("Constant", { fg = c.keyword })
hl("Character", { fg = c.string })
hl("Number", { fg = c.number })
hl("Boolean", { fg = c.type })
hl("Identifier", { fg = c.fg })
hl("Function", { fg = c.func })
hl("Statement", { fg = c.keyword })
hl("Keyword", { fg = c.keyword })
hl("Operator", { fg = c.operator })
hl("PreProc", { fg = c.enum })
hl("Type", { fg = c.type })
hl("Structure", { fg = c.keyword })
hl("Special", { fg = c.keyword })

hl("@keyword", { fg = c.keyword, bold = true })
hl("@keyword.function", { fg = c.keyword })
hl("@type", { fg = c.keyword })
hl("@type.builtin", { fg = c.type })
hl("@type.definition", { fg = c.type })
hl("@type.qualifier", { fg = c.type })
hl("@constructor", { fg = c.func })
hl("@function", { fg = c.func })
hl("@function.call", { fg = c.func })
hl("@variable", { fg = c.fg })
hl("@variable.parameter", { fg = c.fg })
hl("@property", { fg = c.property })
hl("@string", { fg = c.string })
hl("@comment", { fg = c.comment, italic = true })
hl("@operator", { fg = c.operator })
hl("@punctuation.bracket", { fg = c.operator })
hl("@punctuation.delimiter", { fg = c.operator })

-- C/C++
hl("@lsp.typemod.property.classScope.cpp", { fg = c.fg })
hl("@lsp.typemod.enumMember.declaration.cpp", { fg = c.enum })
hl("@lsp.typemod.enum.declaration.cpp", { fg = c.keyword })
hl("@lsp.typemod.property.readonly.cpp", { fg = c.property })
hl("@lsp.type.macro.cpp", { fg = c.enum })
hl("@lsp.typemod.macro.globalScope.cpp", { fg = c.enum })

hl("@lsp.typemod.class.globalScope.c", { fg = c.enum })
hl("@lsp.typemod.enum.globalScope.c", { fg = c.enum })
hl("@lsp.typemod.macro.globalScope.c", { fg = c.enum })
hl("@lsp.typemod.enumMember.readonly.c", { fg = c.enum })

-- TS/ TSX
hl("@type.tsx", { fg = c.enum })
hl("@tag.builtin.tsx", { fg = c.keyword })
hl("@_jsx_attribute", { fg = c.property })
hl("@lsp.typemod.property.declaration.typescript", { fg = c.fg })

-- NvimTree
hl("NvimTreeFolderName", { fg = c.tree })
hl("NvimTreeOpenedFolderName", { fg = c.tree, bold = false })
hl("NvimTreeFolderIcon", { fg = c.tree })
hl("NvimTreeEmptyFolderName", { fg = c.tree })

-- Diagnostics
hl("DiagnosticError", { fg = "#FF5A59" })
hl("DiagnosticWarn", { fg = "#FFD166" })
hl("DiagnosticInfo", { fg = "#60A5FA" })
hl("DiagnosticHint", { fg = "#A8C7FA" })
hl("DiagnosticUnnecessary", { fg = c.keyword })
hl("@string.cpp", { fg = c.string })

hl("DiagnosticUnderlineError", { undercurl = true, sp = "#FF5A59" })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = "#FFD166" })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = "#60A5FA" })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = "#A8C7FA" })

hl("DiagnosticVirtualTextError", { fg = "#FF5A59" })
hl("DiagnosticVirtualTextWarn", { fg = "#FFD166" })
hl("DiagnosticVirtualTextInfo", { fg = "#60A5FA" })
hl("DiagnosticVirtualTextHint", { fg = "#A8C7FA" })

hl("DiagnosticSignError", { fg = "#FF5A59" })
hl("DiagnosticSignWarn", { fg = "#FFD166" })
hl("DiagnosticSignInfo", { fg = "#60A5FA" })
hl("DiagnosticSignHint", { fg = "#A8C7FA" })
