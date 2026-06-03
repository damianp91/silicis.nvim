local M = {}
local util = require('silicis.util')
local hl = util.hl

function M.setup(colors, _)

  -- nvim-cmp
  hl("CmpBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  hl("CmpDocumentation", {
    fg = colors.fg,
    bg = colors.bg_float,
  })

  hl("CmpDocumentationBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  hl("CmpDocBorder", {
    fg = colors.border,
    bg = colors.bg_float,
  })

  -- abbr
  hl("CmpItemAbbr", {
    fg = colors.fg,
  })

  hl("CmpItemAbbrMatch", {
    fg = colors.orange,
    bold = true,
  })

  hl("CmpItemAbbrMatchFuzzy", {
    fg = colors.orange,
  })

  hl("CmpItemMenu", {
    fg = colors.comment,
  })

  hl("CmpItemAbbrDeprecated", {
    fg = colors.comment,
    strikethrough = true,
  })

  -- Item kinds
  hl("CmpItemKindFunction", {
    fg = colors.yellow,
  })

  hl("CmpItemKindMethod", {
    fg = colors.yellow,
  })

  hl("CmpItemKindVariable", {
    fg = colors.fg_light,
  })

  hl("CmpItemKindField", {
    fg = colors.cyan,
  })

  hl("CmpItemKindProperty", {
    fg = colors.cyan,
  })

  hl("CmpItemKindClass", {
    fg = colors.yellow,
  })

  hl("CmpItemKindInterface", {
    fg = colors.yellow,
  })

  hl("CmpItemKindModule", {
    fg = colors.orange,
  })

  hl("CmpItemKindKeyword", {
    fg = colors.red,
  })

  hl("CmpItemKindSnippet", {
    fg = colors.green,
  })

  hl("CmpItemKindText", {
    fg = colors.comment,
  })

  hl("CmpItemKindEnum", {
    fg = colors.purple,
  })

  hl("CmpItemKindEnumMember", {
    fg = colors.orange,
  })

  hl("CmpItemKindStruct", {
    fg = colors.yellow,
  })

  hl("CmpItemKindConstant", {
    fg = colors.orange,
  })

  hl("CmpItemKindConstructor", {
    fg = colors.yellow,
  })

  hl("CmpItemKindTypeParameter", {
    fg = colors.aqua,
  })

  hl("CmpItemKindOperator", {
    fg = colors.red,
  })

  hl("CmpItemKindFolder", {
    fg = colors.blue,
  })

  hl("CmpItemKindFile", {
    fg = colors.fg,
  })

  -- icons
  hl("CmpItemKindKeywordIcon", {
    link = "CmpItemKindKeyword",
  })

  hl("CmpItemKindFunctionIcon", {
    link = "CmpItemKindFunction",
  })

  hl("CmpItemKindMethodIcon", {
    link = "CmpItemKindMethod",
  })

  hl("CmpItemKindVariableIcon", {
    link = "CmpItemKindVariable",
  })

  hl("CmpItemKindFieldIcon", {
    link = "CmpItemKindField",
  })

  hl("CmpItemKindPropertyIcon", {
    link = "CmpItemKindProperty",
  })

  hl("CmpItemKindClassIcon", {
    link = "CmpItemKindClass",
  })

  hl("CmpItemKindInterfaceIcon", {
    link = "CmpItemKindInterface",
  })

  hl("CmpItemKindModuleIcon", {
    link = "CmpItemKindModule",
  })

  hl("CmpItemKindSnippetIcon", {
    link = "CmpItemKindSnippet",
  })

  hl("CmpItemKindEnumIcon", {
    link = "CmpItemKindEnum",
  })

  hl("CmpItemKindEnumMemberIcon", {
    link = "CmpItemKindEnumMember",
  })

  hl("CmpItemKindStructIcon", {
    link = "CmpItemKindStruct",
  })

  hl("CmpItemKindConstantIcon", {
    link = "CmpItemKindConstant",
  })

  hl("CmpItemKindConstructorIcon", {
    link = "CmpItemKindConstructor",
  })

  hl("CmpItemKindTypeParameterIcon", {
    link = "CmpItemKindTypeParameter",
  })

  hl("CmpItemKindOperatorIcon", {
    link = "CmpItemKindOperator",
  })

  hl("CmpItemKindFolderIcon", {
    link = "CmpItemKindFolder",
  })

  hl("CmpItemKindFileIcon", {
    link = "CmpItemKindFile",
  })
end

return M
