let s:base03  = '#002b36'
let s:base02  = '#073642'
let s:base01  = '#586e75'
let s:base00  = '#657b83'
let s:base0   = '#839496'
let s:base1   = '#93a1a1'
let s:base2   = '#eee8d5'
let s:base3   = '#fdf6e3'

let s:blue    = '#268bd2'
let s:green   = '#859900'
let s:orange  = '#cb4b16'
let s:red     = '#dc322f'
let s:yellow  = '#b58900'

if &background ==# 'light'
  let [ s:base03, s:base3 ] = [ s:base3, s:base03 ]
  let [ s:base02, s:base2 ] = [ s:base2, s:base02 ]
  let [ s:base01, s:base1 ] = [ s:base1, s:base01 ]
  let [ s:base00, s:base0 ] = [ s:base0, s:base00 ]
endif

exec 'hi CursorLineNr guifg=' . s:base0 . ' guibg=' . s:base02 . ' gui=NONE'
exec 'hi LineNr guibg=' . s:base03
exec 'hi StatusLine guifg=' . s:base03 . ' gui=NONE'
exec 'hi StatusLineNC guifg=' . s:base03
exec 'hi Todo guifg=' . s:yellow
exec 'hi VertSplit guifg=' . s:base03 . ' guibg=' . s:base03
exec 'hi Visual guifg=NONE guibg=' . s:base02 . ' gui=NONE'

hi ErrorMsg gui=NONE
hi IncSearch gui=NONE
hi SpecialKey guibg=NONE

hi! link Cursor VisualNOS
hi! link Delimiter Identifier
hi! link SignColumn LineNr

" json
hi! link htmlArg Label

" ruby
hi! link rubyDefine rubyControl
hi! link rubyInterpolationDelimiter rubyConstant
hi! link rubyStringDelimiter rubyConstant
hi! link rubySymbol Structure

" vim-gitgutter
exec 'hi GitGutterAdd guifg=' . s:green
exec 'hi GitGutterChange guifg=' . s:blue
exec 'hi GitGutterChangeDelete guifg=' . s:blue
exec 'hi GitGutterDelete guifg=' . s:red
