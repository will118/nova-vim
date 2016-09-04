" ==================================================================
" THEME
" TODO: Read from nova-colors as single source of truth instead of hard-coding in vim plugin
" ==================================================================

" NORMAL
let s:nova_normal_black = "#445660"
let s:nova_normal_red = "#DF8C8C"
let s:nova_normal_green = "#A8CE93"
let s:nova_normal_yellow = "#DADA93"
let s:nova_normal_blue = "#83AFE5"
let s:nova_normal_magenta = "#9A93E1"
let s:nova_normal_cyan = "#7FC1CA"
let s:nova_normal_white = "#C5D4DD"

" BRIGHT
let s:nova_bright_black = "#899BA6"
let s:nova_bright_red = "#F2C38F"
let s:nova_bright_magenta = "#D18EC2"
let s:nova_bright_white = "#E6EEF3"

" DECORATION
let s:nova_decoration_dark = "#1E272C"
let s:nova_decoration_medium = "#556873"
let s:nova_decoration_light = "#6A7D89"


" ==================================================================
" PURPOSE
" ==================================================================

let s:purpose_background = s:nova_normal_black
let s:purpose_background_tint = s:nova_decoration_medium
let s:purpose_important = s:nova_normal_red
let s:purpose_type = s:nova_normal_green
let s:purpose_value = s:nova_normal_yellow
let s:purpose_identifier = s:nova_normal_blue
let s:purpose_global = s:nova_normal_magenta
let s:purpose_expression = s:nova_normal_cyan
let s:purpose_subtle = s:nova_bright_black
let s:purpose_current = s:nova_bright_red
let s:purpose_special = s:nova_bright_magenta


" ==================================================================
" HIGHLIGHT HELPER
" ==================================================================

function! s:highlight_helper(syntax_group, foreground_color, background_color)
  if a:background_color != ""
    exec "highlight " . a:syntax_group . " guifg=" . a:foreground_color . " guibg=" . a:background_color . " gui=NONE cterm=NONE term=NONE"
  else
    exec "highlight " . a:syntax_group . " guifg=" . a:foreground_color . " guibg=NONE gui=NONE cterm=NONE term=NONE"
  endif
endfunction


" ==================================================================
" RESET
" ==================================================================

set background=dark
highlight clear
set termguicolors
syntax on
syntax reset
let g:colors_name = 'nova'
call s:highlight_helper("Normal", s:nova_normal_white, "")


" ==================================================================
" SYNTAX
" ==================================================================

call s:highlight_helper("Comment", s:purpose_subtle, "")
call s:highlight_helper("Todo", s:purpose_important, "")
call s:highlight_helper("Identifier", s:purpose_identifier, "")
call s:highlight_helper("Constant", s:purpose_value, "")
call s:highlight_helper("Statement", s:purpose_expression, "")
call s:highlight_helper("Type", s:purpose_type, "")
call s:highlight_helper("PreProc", s:purpose_global, "")
call s:highlight_helper("Error", s:purpose_important, "")
call s:highlight_helper("Underlined", s:purpose_special, "")
call s:highlight_helper("Special", s:purpose_special, "")
call s:highlight_helper("Ignore", s:purpose_subtle, "")


" ==================================================================
" EDITOR
" ==================================================================

" DIRECTORIES
call s:highlight_helper("Directory", s:purpose_value, "")

" PAGER
call s:highlight_helper("MoreMsg", s:purpose_current, "")

" TABS
call s:highlight_helper("Tabline", s:nova_decoration_dark, "")
call s:highlight_helper("TablineFill", s:nova_decoration_dark, "")
call s:highlight_helper("TablineSel", s:purpose_current, "")

" SPLITS
set fillchars=""
call s:highlight_helper("VertSplit", s:purpose_background_tint, s:purpose_background_tint)

" STATUS LINE
call s:highlight_helper("StatusLineNC", s:nova_bright_black, s:purpose_background_tint)
call s:highlight_helper("StatusLine", s:purpose_current, s:purpose_background_tint)

" BUFFER OVERFLOW
call s:highlight_helper("EndOfBuffer", s:nova_decoration_light, s:purpose_background)

" SEARCH
call s:highlight_helper("IncSearch", s:nova_decoration_light, s:purpose_current)
call s:highlight_helper("Search", s:nova_decoration_dark, s:purpose_current)

" COMMAND LINE
call s:highlight_helper("ModeMsg", s:purpose_current, "")
call s:highlight_helper("ErrorMsg", s:purpose_important, "")
call s:highlight_helper("WarningMsg", s:purpose_important, "")
call s:highlight_helper("WildMenu", s:nova_decoration_light, s:purpose_current)
call s:highlight_helper("Question", s:purpose_current, "")
call s:highlight_helper("Title", s:nova_normal_white, "")

" GUTTER
call s:highlight_helper("LineNr", s:nova_decoration_light, "")
call s:highlight_helper("CursorLineNr", s:purpose_current, "")
call s:highlight_helper("SignColumn", "NONE", s:purpose_background)

" CURSOR
call s:highlight_helper("CursorLine", "NONE", s:purpose_background_tint)
call s:highlight_helper("CursorColumn", s:nova_decoration_light, "")

" BRACKET MATCHING
call s:highlight_helper("MatchParen", s:nova_normal_white, "")

" VISUAL MODE
call s:highlight_helper("Visual", s:nova_normal_white, "")
call s:highlight_helper("VisualNOS", s:nova_normal_white, "")

" POPUP MENU
call s:highlight_helper("Pmenu", s:nova_normal_white, "")
call s:highlight_helper("PmenuSel", s:nova_normal_white, "")
call s:highlight_helper("PmenuSbar", s:nova_normal_white, "")
call s:highlight_helper("PmenuThumb", s:nova_normal_white, "")

" DIFFS
call s:highlight_helper("DiffAdd", s:nova_normal_white, "")
call s:highlight_helper("DiffChange", s:nova_normal_white, "")
call s:highlight_helper("DiffDelete", s:nova_normal_white, "")
call s:highlight_helper("DiffText", s:nova_normal_white, "")

" FOLDS
call s:highlight_helper("Folded", s:nova_normal_white, "")
call s:highlight_helper("FoldColumn", s:nova_normal_white, "")

" COLUMNS
call s:highlight_helper("ColorColumn", s:nova_normal_white, "")

" OTHER
call s:highlight_helper("SpecialKey", s:nova_normal_white, "")
call s:highlight_helper("NonText", s:nova_normal_white, "")
call s:highlight_helper("Conceal", s:nova_normal_white, "")
