let s:gb = {}

let s:gb.dark0          = '#282828'
let s:gb.dark0_hard     = '#1d2021'
let s:gb.dark0_soft     = '#32302f'
let s:gb.dark4          = '#7c6f64'

let s:gb.light0         = '#fbf1c7'
let s:gb.light0_hard    = '#f9f5d7'
let s:gb.light0_soft    = '#f2e5bc'
let s:gb.light4         = '#a89984'

let s:gb.bright_blue    = '#83a598'
let s:gb.bright_green   = '#b8bb26'
let s:gb.bright_red     = '#fb4934'
let s:gb.bright_yellow  = '#fabd2f'

let s:gb.neutral_blue   = '#458588'
let s:gb.neutral_green  = '#98971a'
let s:gb.neutral_red    = '#cc241d'
let s:gb.neutral_yellow = '#d79921'

if &background ==# 'dark'

    let s:bg0 = s:gb.dark0
    if g:gruvbox_contrast_dark ==# 'soft'
        let s:bg0 = s:gb.dark0_soft
    elseif g:gruvbox_contrast_dark ==# 'hard'
        let s:bg0 = s:gb.dark0_hard
    endif

    let s:fg4    = s:gb.light4

    let s:blue   = s:gb.bright_blue
    let s:green  = s:gb.bright_green
    let s:red    = s:gb.bright_red
    let s:yellow = s:gb.bright_yellow

else

    let s:bg0 = s:gb.light0
    if g:gruvbox_contrast_light ==# 'soft'
        let s:bg0 = s:gb.light0_soft
    elseif g:gruvbox_contrast_light ==# 'hard'
        let s:bg0 = s:gb.light0_hard
    endif

    let s:fg4    = s:gb.dark4

    let s:blue   = s:gb.neutral_blue
    let s:green  = s:gb.neutral_green
    let s:red    = s:gb.neutral_red
    let s:yellow = s:gb.neutral_yellow

endif

exec 'hi CursorLineNr guifg=' . s:fg4
exec 'hi ErrorMsg guifg=' . s:red . ' guibg=NONE'
exec 'hi StatusLineNC guifg=' . s:bg0
exec 'hi Todo guifg=' . s:yellow . ' gui=NONE'
exec 'hi VertSplit guifg=' . s:bg0

hi Error gui=NONE
hi StatusLine gui=NONE

" vim-gitgutter
exec 'hi GitGutterAdd guifg=' . s:green
exec 'hi GitGutterChange guifg=' . s:blue
exec 'hi GitGutterChangeDelete guifg=' . s:blue
exec 'hi GitGutterDelete guifg=' . s:red
