" ==================================================================
" THEME
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

" PURPOSE MAPPING
let s:purpose_background = s:nova_normal_black
let s:purpose_background_shade = s:nova_decoration_dark
let s:purpose_background_tint = s:nova_decoration_medium
let s:purpose_default = s:nova_normal_white
let s:purpose_subtle = s:nova_bright_black
let s:purpose_important = s:nova_normal_red
let s:purpose_type = s:nova_normal_green
let s:purpose_value = s:nova_normal_yellow
let s:purpose_identifier = s:nova_normal_blue
let s:purpose_global = s:nova_normal_magenta
let s:purpose_expression = s:nova_normal_cyan
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
call s:highlight_helper("Normal", s:purpose_default, "")


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
call s:highlight_helper("Tabline", s:purpose_background_shade, "")
call s:highlight_helper("TablineFill", s:purpose_background_shade, "")
call s:highlight_helper("TablineSel", s:purpose_current, "")

" SPLITS
set fillchars=""
call s:highlight_helper("VertSplit", s:purpose_background_shade, s:purpose_background_shade)

" STATUS LINE
call s:highlight_helper("StatusLineNC", s:purpose_background, s:purpose_background_shade)
call s:highlight_helper("StatusLine", s:purpose_current, s:purpose_background_shade)

" BUFFER OVERFLOW
call s:highlight_helper("EndOfBuffer", s:purpose_background_tint, s:purpose_background)

" SEARCH
call s:highlight_helper("IncSearch", s:purpose_background, s:purpose_current)
call s:highlight_helper("Search", s:purpose_background, s:purpose_current)

" COMMAND LINE
call s:highlight_helper("ModeMsg", s:purpose_current, "")
call s:highlight_helper("ErrorMsg", s:purpose_important, "")
call s:highlight_helper("WarningMsg", s:purpose_important, "")
call s:highlight_helper("WildMenu", s:purpose_background_shade, s:purpose_current)
call s:highlight_helper("Question", s:purpose_current, "")
call s:highlight_helper("Title", s:purpose_background_shade, "")

" GUTTER
call s:highlight_helper("LineNr", s:purpose_background_tint, "")
call s:highlight_helper("CursorLineNr", s:purpose_current, "")
call s:highlight_helper("SignColumn", "NONE", s:purpose_background)

" CURSOR
call s:highlight_helper("CursorLine", "NONE", s:purpose_background_tint)
call s:highlight_helper("CursorColumn", s:purpose_background_tint, "")

" BRACKET MATCHING
call s:highlight_helper("MatchParen", s:purpose_current, "")

" VISUAL MODE
call s:highlight_helper("Visual", "NONE", s:purpose_background_tint)
call s:highlight_helper("VisualNOS", "NONE", s:purpose_background_tint)

" POPUP MENU
call s:highlight_helper("Pmenu", s:purpose_current, s:purpose_background_shade)
call s:highlight_helper("PmenuSel", s:purpose_background_shade, s:purpose_current)
call s:highlight_helper("PmenuSbar", s:purpose_background_tint, s:purpose_background_tint)
call s:highlight_helper("PmenuThumb", s:purpose_default, s:purpose_default)

" SPELLING
call s:highlight_helper("SpellBad", s:purpose_background, s:purpose_important)
call s:highlight_helper("SpellCap", s:purpose_background, s:purpose_important)

" DIFFS
call s:highlight_helper("DiffAdd", s:purpose_background, s:purpose_expression)
call s:highlight_helper("DiffChange", s:purpose_background, s:purpose_important)
call s:highlight_helper("DiffDelete", s:purpose_background, s:purpose_important)
call s:highlight_helper("DiffText", s:purpose_background_shade, "")

" FOLDS
call s:highlight_helper("Folded", s:purpose_background, s:purpose_background_tint)
call s:highlight_helper("FoldColumn", s:purpose_background, s:purpose_background_tint)

" COLUMNS
call s:highlight_helper("ColorColumn", s:purpose_background_tint, "")

" OTHER
call s:highlight_helper("SpecialKey", s:purpose_special, "")
call s:highlight_helper("NonText", s:purpose_special, "")
call s:highlight_helper("Conceal", s:purpose_subtle, "")
