if vim.b.current_syntax then return end

vim.cmd [[
syntax match nethackComment "^#.*$"
syntax keyword nethackKeyword OPTIONS DOGNAME CATNAME BONES HPUX OPTIONSFROMSYS
syntax match nethackOperator "="
syntax region nethackString start=+"+ end=+"+

highlight def link nethackComment Comment
highlight def link nethackKeyword Keyword
highlight def link nethackOperator Operator
highlight def link nethackString String
]]

vim.b.current_syntax = 'nethack'
