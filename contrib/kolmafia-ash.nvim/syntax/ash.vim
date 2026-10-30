" Experimental independently authored Neovim syntax for KoLmafia ASH.
" Not copied from quisquous/vim-kolmafia or C2Talon/vim-kolmafia.
if exists('b:current_syntax')
  finish
endif
syntax case match
syntax keyword ashConditional if else switch case default
syntax keyword ashRepeat for foreach repeat until while
syntax keyword ashException try catch finally
syntax keyword ashStatement return break continue exit import
syntax keyword ashType void boolean int float string buffer matcher record
syntax keyword ashType bounty class coinmaster effect element familiar item
syntax keyword ashType location modifier monster path phylum servant skill slot
syntax keyword ashType stat thrall vykea
syntax keyword ashBoolean true false
syntax keyword ashTodo TODO FIXME XXX contained
syntax match ashComment /\/\/.*$/ contains=ashTodo
syntax match ashComment /#.*$/ contains=ashTodo
syntax region ashComment start=+/\*+ end=+\*/+ contains=ashTodo
syntax region ashString start=+"+ skip=+\\.+ end=+"+ oneline
syntax region ashString start=+'+ skip=+\\.+ end=+'+ oneline
syntax region ashString start=+`+ skip=+\\.+ end=+`+ oneline
syntax match ashNumber /\v<\d+(\.\d+)?>/
syntax match ashConstant /\$\h\w*\s*\[/
syntax match ashFunction /\<\h\w*\>\ze\s*(/
hi def link ashConditional Conditional
hi def link ashRepeat Repeat
hi def link ashException Exception
hi def link ashStatement Statement
hi def link ashType Type
hi def link ashBoolean Boolean
hi def link ashTodo Todo
hi def link ashComment Comment
hi def link ashString String
hi def link ashNumber Number
hi def link ashConstant Constant
hi def link ashFunction Function
let b:current_syntax = 'ash'
